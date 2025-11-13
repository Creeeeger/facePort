.class public final Lcom/android/systemui/wallpaper/theme/view/LeafView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLeafImageId:[I

.field public final mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

.field public final mLeafSizeScale:[F

.field public final mPaint:Landroid/graphics/Paint;

.field public final matrix:Landroid/graphics/Matrix;

.field public refresh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    const v1, 0x7f080bf7

    const v2, 0x7f080bf8

    const v3, 0x7f080bf5

    const v4, 0x7f080bf6

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafImageId:[I

    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafSizeScale:[F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mContext:Landroid/content/Context;

    const/16 v1, 0x23

    new-array v1, v1, [Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    invoke-direct {v3, p1}, Lcom/android/systemui/wallpaper/theme/particle/Leaf;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
    .end array-data
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    iget v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafSizeScale:[F

    iget v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafSize:I

    aget v7, v7, v8

    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafImageId:[I

    iget v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafKind:I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mContext:Landroid/content/Context;

    iget v9, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    invoke-static {v8, v9}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mContext:Landroid/content/Context;

    iget v10, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    invoke-static {v9, v10}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    iget v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mXSpeed:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    iget v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    iget v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mYSpeed:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    iget v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    add-int/lit8 v8, v8, 0x2

    iput v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    const/4 v8, 0x0

    cmpl-float v9, v6, v8

    if-lez v9, :cond_1

    sget v9, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    int-to-float v9, v9

    cmpg-float v6, v6, v9

    if-gez v6, :cond_1

    sget v6, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    int-to-float v6, v6

    cmpg-float v6, v7, v6

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    sget v7, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    add-int/lit8 v7, v7, -0x20

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    int-to-float v6, v6

    iput v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    iput v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    :goto_1
    iget v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    const/16 v7, 0x168

    if-lt v6, v7, :cond_2

    iput v3, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    :cond_2
    add-int/2addr v4, v1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final screenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    return-void
.end method

.method public final screenTurnedOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
