.class public final Lcom/android/systemui/indexsearch/CircleFramedTileIcon;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mDstRect:Landroid/graphics/RectF;

.field public final mScale:F

.field public final mSize:I

.field public final mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 12

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    instance-of p1, p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    int-to-float p1, p2

    sget-object v3, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070e32

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    mul-float/2addr v3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v3, p1

    float-to-int p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, p1

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, p1

    add-int/2addr v5, p1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v3, v4, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, p2

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    const/high16 v7, 0x43b40000    # 360.0f

    invoke-virtual {v6, v3, v5, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v9, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v11, 0x7f0605dd

    invoke-virtual {v9, v11, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x7f0605d6

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0, p1, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mScale:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v2, v2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSrcRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v5, v5, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mScale:F

    iget v1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    int-to-float v2, v1

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    sub-float/2addr v3, v2

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSrcRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

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
