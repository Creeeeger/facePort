.class public final Lcom/android/launcher3/icons/UserBadgeDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final SHADOW_COLOR:I = 0x11000000


# instance fields
.field public final mBaseColor:I

.field public final mBgColor:I

.field public final mIsThemed:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public final mShouldDrawBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mPaint:Landroid/graphics/Paint;

    iput-boolean v0, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mShouldDrawBackground:Z

    iput-boolean p4, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mIsThemed:Z

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->mutate()Landroid/graphics/drawable/Drawable;

    const p2, 0x7f060afe

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBaseColor:I

    const p2, 0x7f060afd

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBgColor:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBaseColor:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBgColor:I

    :goto_0
    iget p1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBaseColor:I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setTint(I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIZ)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mIsThemed:Z

    iput p2, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBgColor:I

    iput p3, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBaseColor:I

    iput-boolean p4, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mShouldDrawBackground:Z

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mShouldDrawBackground:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41c00000    # 24.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x11000000

    invoke-static {v2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Color;->alpha()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41440000    # 12.25f

    const/high16 v3, 0x41380000    # 11.5f

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {p1, v4, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBgColor:I

    invoke-static {v2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Color;->alpha()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getAlpha()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {p1, v4, v4, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 4

    new-instance v0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBgColor:I

    iget v3, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBaseColor:I

    iget-boolean p0, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mShouldDrawBackground:Z

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;IIZ)V

    return-object v0
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 5

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBaseColor:I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setTint(I)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/graphics/ColorMatrixColorFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrixColorFilter;->getColorMatrix(Landroid/graphics/ColorMatrix;)V

    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBaseColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    aput v3, v2, v1

    iget v1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBaseColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/4 v3, 0x6

    aput v1, v2, v3

    iget v1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBaseColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/16 v3, 0xc

    aput v1, v2, v3

    iget v1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable;->mBaseColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/16 v3, 0x12

    aput v1, v2, v3

    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-super {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-static {v2, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setTint(I)V

    :goto_0
    return-void
.end method
