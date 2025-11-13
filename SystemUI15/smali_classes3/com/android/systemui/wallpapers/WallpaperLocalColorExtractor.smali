.class public final Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field static final MINI_BITMAP_MAX_AREA:I = 0x3100


# instance fields
.field public mBitmapHeight:I

.field public mBitmapWidth:I

.field public mDisplayHeight:I

.field public mDisplayWidth:I

.field public final mLock:Ljava/lang/Object;

.field public final mLongExecutor:Ljava/util/concurrent/Executor;

.field public mMiniBitmap:Landroid/graphics/Bitmap;

.field public mPages:I

.field public final mPendingRegions:Ljava/util/List;

.field public final mProcessedRegions:Ljava/util/Set;

.field public final mWallpaperDimAmount:F

.field public final mWallpaperLocalColorExtractorCallback:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$WallpaperLocalColorExtractorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$WallpaperLocalColorExtractorCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayWidth:I

    iput v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayHeight:I

    iput v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPages:I

    iput v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapWidth:I

    iput v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapHeight:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mProcessedRegions:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLock:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mWallpaperLocalColorExtractorCallback:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$WallpaperLocalColorExtractorCallback;

    return-void
.end method


# virtual methods
.method public createMiniBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p2, p3, p0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getLocalWallpaperColors(Landroid/graphics/Rect;)Landroid/app/WallpaperColors;
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p0, v0, v1, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperColors(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;
    .locals 0

    invoke-static {p1, p2}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public final isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mProcessedRegions:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final processLocalColorsInternal()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayWidth:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayHeight:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPages:I

    if-gez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v0, "WallpaperLocalColorExtractor#processColorsInternal"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPages:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    iget v5, v2, Landroid/graphics/RectF;->left:F

    rem-float/2addr v5, v3

    div-float/2addr v5, v3

    iget v6, v2, Landroid/graphics/RectF;->right:F

    rem-float/2addr v6, v3

    div-float/2addr v6, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    div-float/2addr v7, v3

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v3, v7

    iget v7, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayWidth:I

    const/4 v8, 0x0

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayHeight:I

    if-gtz v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    iput v9, v7, Landroid/graphics/RectF;->bottom:F

    iget v9, v2, Landroid/graphics/RectF;->top:F

    iput v9, v7, Landroid/graphics/RectF;->top:F

    iget v9, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapHeight:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget v10, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v9

    iget v9, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapWidth:I

    if-lez v9, :cond_3

    int-to-float v9, v9

    div-float/2addr v10, v9

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float v10, v4, v9

    iget v11, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPages:I

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    div-float/2addr v10, v11

    mul-float/2addr v5, v9

    int-to-float v3, v3

    mul-float/2addr v3, v10

    add-float/2addr v5, v3

    const/4 v10, 0x0

    invoke-static {v5, v10, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    iput v5, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v6, v9

    add-float/2addr v6, v3

    invoke-static {v6, v10, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    iput v3, v7, Landroid/graphics/RectF;->right:F

    iget v5, v7, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v5, v3

    if-lez v3, :cond_5

    iput v10, v7, Landroid/graphics/RectF;->left:F

    iput v4, v7, Landroid/graphics/RectF;->right:F

    goto :goto_3

    :cond_4
    :goto_2
    const-string v3, "WallpaperLocalColorExtractor"

    const-string v4, "Trying to extract colors with invalid display dimensions"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    :cond_5
    :goto_3
    if-eqz v7, :cond_8

    sget-object v3, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v3, v7}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v7, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v7, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v6, v9

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v6, v9

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v7, v9

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->getLocalWallpaperColors(Landroid/graphics/Rect;)Landroid/app/WallpaperColors;

    move-result-object v8

    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mProcessedRegions:Ljava/util/Set;

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mWallpaperLocalColorExtractorCallback:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$WallpaperLocalColorExtractorCallback;

    invoke-interface {p0, v1, v0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$WallpaperLocalColorExtractorCallback;->onColorsProcessed(Ljava/util/List;Ljava/util/List;)V

    :cond_a
    :goto_5
    return-void
.end method
