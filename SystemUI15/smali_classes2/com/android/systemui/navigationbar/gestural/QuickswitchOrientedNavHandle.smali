.class public final Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;
.super Lcom/android/systemui/navigationbar/gestural/NavigationHandle;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDeltaRotation:I

.field public final mHandleView:Landroid/widget/ImageView;

.field public final mHomeHandleRect:Landroid/graphics/Rect;

.field public final mTmpBoundsRectF:Landroid/graphics/RectF;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mTmpBoundsRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHomeHandleRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b02

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mWidth:I

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHandleView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final computeHomeHandleBounds()Landroid/graphics/RectF;
    .locals 7

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mDeltaRotation:I

    if-eq v4, v3, :cond_1

    const/4 v3, 0x3

    if-eq v4, v3, :cond_0

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    add-float/2addr v0, v3

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:F

    sub-float v5, v3, v4

    sub-float v0, v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mWidth:I

    int-to-float v6, v4

    div-float/2addr v6, v1

    sub-float/2addr v3, v6

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v3, v2

    int-to-float v1, v4

    add-float/2addr v1, v3

    move v2, v0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:F

    add-float v5, v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mWidth:I

    int-to-float v6, v4

    div-float/2addr v6, v1

    sub-float/2addr v0, v6

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    int-to-float v1, v4

    add-float/2addr v1, v0

    move v2, v3

    move v3, v0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mTmpBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mTmpBoundsRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->computeHomeHandleBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_4

    check-cast p1, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070ee1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mDeltaRotation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    goto :goto_1

    :cond_1
    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v3, p1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkIntensity:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;->setDarkIntensity(F)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHandleView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHandleView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHomeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ee2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x10

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHandleView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method
