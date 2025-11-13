.class public final Lcom/samsung/android/settings/widget/SecIconResizer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCanvas:Landroid/graphics/Canvas;

.field public final mContext:Landroid/content/Context;

.field public mIconHeight:I

.field public mIconWidth:I

.field public final mOldBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconWidth:I

    iput v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mOldBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mCanvas:Landroid/graphics/Canvas;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070d97

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconHeight:I

    iput v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconWidth:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string p1, "mScreenIsLarge : "

    const-string v0, "IconResizer"

    invoke-static {p1, v0, p0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconWidth:I

    iget v1, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconHeight:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    instance-of v4, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    :cond_0
    if-lez v0, :cond_5

    if-lez v1, :cond_5

    const/4 v4, 0x0

    if-lt v0, v2, :cond_2

    if-ge v1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ge v2, v0, :cond_5

    if-ge v3, v1, :cond_5

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget v3, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconWidth:I

    iget v5, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconHeight:I

    invoke-static {v3, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v5, 0x0

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v5

    add-int/2addr v1, v6

    invoke-virtual {p1, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_2
    :goto_0
    int-to-float v5, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    if-le v2, v3, :cond_3

    int-to-float v1, v0

    div-float/2addr v1, v5

    float-to-int v1, v1

    goto :goto_1

    :cond_3
    if-le v3, v2, :cond_4

    int-to-float v0, v1

    mul-float/2addr v0, v5

    float-to-int v0, v0

    :cond_4
    :goto_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget v3, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconWidth:I

    iget v5, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconHeight:I

    invoke-static {v3, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v5, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconWidth:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconHeight:I

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v5

    add-int/2addr v1, v6

    invoke-virtual {p1, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    :goto_2
    return-object p1
.end method
