.class public final Lcom/android/systemui/wallpaper/theme/view/SnowView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mSnowPool:[Lcom/android/systemui/wallpaper/theme/particle/Snow;

.field public refresh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->refresh:Z

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mContext:Landroid/content/Context;

    const/16 v1, 0x23

    new-array v1, v1, [Lcom/android/systemui/wallpaper/theme/particle/Snow;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mSnowPool:[Lcom/android/systemui/wallpaper/theme/particle/Snow;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mSnowPool:[Lcom/android/systemui/wallpaper/theme/particle/Snow;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/android/systemui/wallpaper/theme/particle/Snow;

    invoke-direct {v2, p1}, Lcom/android/systemui/wallpaper/theme/particle/Snow;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->refresh:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mSnowPool:[Lcom/android/systemui/wallpaper/theme/particle/Snow;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mPaint:Landroid/graphics/Paint;

    iget v6, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->alpha:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mContext:Landroid/content/Context;

    iget v6, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    invoke-static {v5, v6}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mContext:Landroid/content/Context;

    iget v7, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    invoke-static {v6, v7}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mContext:Landroid/content/Context;

    iget v8, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->radius:I

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v5, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    iget v6, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mXSpeed:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    iget v6, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    iget v7, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mYSpeed:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    iget v7, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->alpha:I

    const/4 v8, 0x0

    if-lez v7, :cond_1

    cmpl-float v7, v5, v8

    if-lez v7, :cond_1

    sget v7, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    int-to-float v7, v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    sget v5, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    int-to-float v5, v5

    cmpg-float v5, v6, v5

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mRandom:Ljava/util/Random;

    sget v6, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    add-int/lit8 v6, v6, -0x20

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    int-to-float v5, v5

    iput v5, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    iput v8, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    sget-object v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDALPHAS:[I

    iget-object v6, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mRandom:Ljava/util/Random;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v5, v5, v6

    iput v5, v4, Lcom/android/systemui/wallpaper/theme/particle/Snow;->alpha:I

    :goto_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final screenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->refresh:Z

    return-void
.end method

.method public final screenTurnedOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->refresh:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
