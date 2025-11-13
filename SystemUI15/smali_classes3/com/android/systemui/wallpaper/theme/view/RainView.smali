.class public final Lcom/android/systemui/wallpaper/theme/view/RainView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mRainPool:[Lcom/android/systemui/wallpaper/theme/particle/Rain;

.field public final rainline:Landroid/graphics/Bitmap;

.field public refresh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->refresh:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mContext:Landroid/content/Context;

    const/16 v0, 0x3c

    new-array v0, v0, [Lcom/android/systemui/wallpaper/theme/particle/Rain;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mRainPool:[Lcom/android/systemui/wallpaper/theme/particle/Rain;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mRainPool:[Lcom/android/systemui/wallpaper/theme/particle/Rain;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/android/systemui/wallpaper/theme/particle/Rain;

    invoke-direct {v2, p1}, Lcom/android/systemui/wallpaper/theme/particle/Rain;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080fab

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->rainline:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->refresh:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mRainPool:[Lcom/android/systemui/wallpaper/theme/particle/Rain;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->rainline:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mContext:Landroid/content/Context;

    iget v7, v4, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    invoke-static {v6, v7}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mContext:Landroid/content/Context;

    iget v8, v4, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    invoke-static {v7, v8}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v5, v4, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    float-to-double v5, v5

    iget-wide v7, v4, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mXSpeed:D

    add-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v4, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    iget v6, v4, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    iget v7, v4, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mYSpeed:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v4, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    const/4 v7, 0x0

    cmpl-float v8, v5, v7

    if-lez v8, :cond_1

    sget v8, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    int-to-float v8, v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_1

    sget v5, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    int-to-float v5, v5

    cmpg-float v5, v6, v5

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mRandom:Ljava/util/Random;

    sget v6, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    add-int/lit8 v6, v6, -0x20

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    int-to-float v5, v5

    iput v5, v4, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    iput v7, v4, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    :goto_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final screenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->refresh:Z

    return-void
.end method

.method public final screenTurnedOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->refresh:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
