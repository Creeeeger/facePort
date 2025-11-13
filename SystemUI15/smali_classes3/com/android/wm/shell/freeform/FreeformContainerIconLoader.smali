.class public final Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAppIconFramePath:Landroid/graphics/Path;

.field public mAppIconFrameSize:I

.field public mAppIconPath:Landroid/graphics/Path;

.field public mAppIconSize:I

.field public final mContext:Landroid/content/Context;

.field public mFreeformContainerOuterSize:I

.field public mFreeformContainerOuterSizeRadius:F

.field public mIconFrameColor:I

.field public mIconFrameShadowColor:I

.field public mIconFrameShadowSize:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPhotoIconFramePath:Landroid/graphics/Path;

.field public mPhotoIconFrameSize:I

.field public mPhotoIconPath:Landroid/graphics/Path;

.field public mPhotoIconRightBottomPaddingSize:I

.field public mPhotoIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->loadResources()V

    return-void
.end method

.method public static clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object p0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 p0, 0x0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method


# virtual methods
.method public final createIconFrameBitmap(Landroid/graphics/Path;IIZ)Landroid/graphics/Bitmap;
    .locals 5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, p1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-nez p4, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->createIconFrameShadowBitmap(Landroid/graphics/Path;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {v2, p0, p2, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p4

    invoke-virtual {v2, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    div-float/2addr p2, p4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, p4

    invoke-virtual {v2, v1, p2, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public final createIconFrameShadowBitmap(Landroid/graphics/Path;I)Landroid/graphics/Bitmap;
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameShadowSize:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameShadowSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameShadowColor:I

    const/4 v4, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameShadowSize:I

    int-to-float p0, p0

    invoke-virtual {v0, p0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object p2
.end method

.method public final getShowingIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 11

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconSize:I

    invoke-virtual {p0, p1, p2, p2}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconPath:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFramePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFrameSize:I

    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameColor:I

    invoke-virtual {p0, p2, v2, v3, v1}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->createIconFrameBitmap(Landroid/graphics/Path;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mFreeformContainerOuterSize:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mFreeformContainerOuterSizeRadius:F

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    invoke-virtual {v3, p2, v1, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    invoke-virtual {v3, p1, v1, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_0
    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconSize:I

    invoke-virtual {p0, p1, v2, v2}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconSize:I

    invoke-virtual {p0, p2, v2, v2}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconPath:Landroid/graphics/Path;

    invoke-static {p1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFramePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFrameSize:I

    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameColor:I

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->createIconFrameBitmap(Landroid/graphics/Path;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconPath:Landroid/graphics/Path;

    invoke-static {p2, v3}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconFramePath:Landroid/graphics/Path;

    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconFrameSize:I

    iget v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameColor:I

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->createIconFrameBitmap(Landroid/graphics/Path;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconFramePath:Landroid/graphics/Path;

    iget v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconFrameSize:I

    invoke-virtual {p0, v4, v5}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->createIconFrameShadowBitmap(Landroid/graphics/Path;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mFreeformContainerOuterSize:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mFreeformContainerOuterSizeRadius:F

    invoke-virtual {v6, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFrameSize:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v0

    sub-float v8, v1, v8

    iget v9, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v0

    sub-float v9, v1, v9

    iget v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    div-float/2addr v9, v0

    invoke-virtual {v6, v4, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    div-float/2addr v9, v0

    invoke-virtual {v6, v2, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    iget v8, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    int-to-float v8, v8

    sub-float/2addr v1, v8

    invoke-virtual {v6, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v6, v3, v1, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v0

    invoke-virtual {v6, p1, v1, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget v8, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    int-to-float v8, v8

    sub-float/2addr v1, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v0

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    int-to-float v0, v0

    sub-float/2addr v8, v0

    invoke-virtual {v6, v1, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v6, p2, v0, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public final loadResources()V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mFreeformContainerOuterSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mFreeformContainerOuterSizeRadius:F

    const v1, 0x7f0703f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFrameSize:I

    const v1, 0x7f0703f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconSize:I

    const v1, 0x7f0703fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameShadowSize:I

    const v1, 0x7f060158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameColor:I

    const v1, 0x7f060159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameShadowColor:I

    const v1, 0x1040369

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconSize:I

    int-to-float v5, v4

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFramePath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFrameSize:I

    int-to-float v4, v3

    div-float/2addr v4, v6

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFramePath:Landroid/graphics/Path;

    invoke-virtual {v3, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    const v1, 0x7f07040e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconSize:I

    const v1, 0x7f07040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconFrameSize:I

    const v1, 0x7f07040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconSize:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconFramePath:Landroid/graphics/Path;

    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconFrameSize:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-virtual {v0, p0, p0, p0, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public final scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const-string v1, "FreeformContainer"

    if-eqz v0, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p2

    if-eq p0, p2, :cond_0

    const-string p2, "[IconLoader] change bitmap densityDpi="

    const-string p3, ", old="

    invoke-static {p0, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_0
    return-object p1

    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p1, :cond_2

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    const-string p1, "[IconLoader] drawable is null"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method
