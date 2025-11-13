.class public Lcom/samsung/android/settings/widget/SecIconResizer;
.super Ljava/lang/Object;
.source "SecIconResizer.java"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field private mIconHeight:I

.field private mIconWidth:I

.field private final mOldBounds:Landroid/graphics/Rect;

.field private mScreenIsLarge:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconWidth:I

    .line 42
    iput v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconHeight:I

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mScreenIsLarge:Z

    .line 46
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 47
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mContext:Landroid/content/Context;

    .line 52
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 55
    sget v1, Lcom/android/settings/R$dimen;->sec_widget_app_icon_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconHeight:I

    iput v1, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconWidth:I

    .line 56
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 57
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mScreenIsLarge:Z

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mScreenIsLarge : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mScreenIsLarge:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconResizer"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 73
    iget v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconWidth:I

    .line 74
    iget v1, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconHeight:I

    .line 75
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 76
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 78
    instance-of v4, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v4, :cond_0

    .line 79
    move-object v4, p1

    check-cast v4, Landroid/graphics/drawable/PaintDrawable;

    .line 80
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 81
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

    .line 116
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 117
    iget v3, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconWidth:I

    iget v5, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconHeight:I

    invoke-static {v3, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 119
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object v5, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sub-int v5, v0, v0

    .line 121
    div-int/lit8 v5, v5, 0x2

    sub-int v6, v1, v1

    .line 122
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v5

    add-int/2addr v1, v6

    .line 123
    invoke-virtual {p1, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 126
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 127
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

    .line 96
    :cond_4
    :goto_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 97
    iget v3, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconWidth:I

    iget v5, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconHeight:I

    invoke-static {v3, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 98
    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 99
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    iget-object v5, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 106
    iget v5, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconWidth:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    .line 107
    iget v6, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconHeight:I

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v5

    add-int/2addr v1, v6

    .line 108
    invoke-virtual {p1, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 111
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 112
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    :goto_2
    return-object p1
.end method

.method public setIconSize(I)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconHeight:I

    iput p1, p0, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconWidth:I

    return-void
.end method
