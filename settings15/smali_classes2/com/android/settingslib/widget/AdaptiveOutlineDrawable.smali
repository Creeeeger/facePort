.class public final Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mInsetPx:I

.field mOutlinePaint:Landroid/graphics/Paint;

.field public final mPath:Landroid/graphics/Path;

.field public final mStrokeWidth:I

.field public final mType:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Lcom/android/settingslib/widget/AdaptiveIconShapeDrawable;

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/AdaptiveIconShapeDrawable;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mType:I

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v0, Landroid/graphics/Path;

    const v1, 0x1040369

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mPath:Landroid/graphics/Path;

    const v0, 0x7f07004c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mStrokeWidth:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    const v1, 0x7f0600c6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v0, 0x7f0702fc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mInsetPx:I

    iput-object p2, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    iget v1, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mType:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42400000    # 48.0f

    iget-object v3, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-virtual {p1, v4, v4, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v1, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mInsetPx:I

    add-int/2addr v2, p0

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v2, p0, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget p0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mInsetPx:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget p0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mInsetPx:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    return p0
.end method
