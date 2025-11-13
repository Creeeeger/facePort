.class Lcom/android/internal/app/PlatLogoActivity$Starfield;
.super Landroid/graphics/drawable/Drawable;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Starfield"
.end annotation


# static fields
.field private static final blacklist NUM_PLANES:I = 0x2

.field private static final blacklist NUM_STARS:I = 0x22


# instance fields
.field private blacklist mBuffer:F

.field private blacklist mDt:J

.field private final blacklist mRng:Ljava/util/Random;

.field private final blacklist mSize:F

.field private final blacklist mSpace:Landroid/graphics/Rect;

.field private final blacklist mStarPaint:Landroid/graphics/Paint;

.field private final blacklist mStars:[F

.field private blacklist mVx:F

.field private blacklist mVy:F

.field private blacklist mWarp:F


# direct methods
.method constructor blacklist <init>(Ljava/util/Random;F)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0x88

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSpace:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    iput p2, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSize:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v3, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVx:F

    mul-float/2addr v3, v2

    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVy:F

    mul-float/2addr v4, v2

    iget v5, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v4, v5

    iget v5, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v5, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    const/high16 v9, -0x1000000

    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-wide v9, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    const/4 v10, 0x2

    if-lez v9, :cond_3

    iget-wide v11, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    const-wide/16 v13, 0x3e8

    cmp-long v9, v11, v13

    if-gez v9, :cond_3

    iget v9, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mBuffer:F

    neg-float v9, v9

    iget-object v11, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v11

    iget v12, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    sub-float/2addr v12, v6

    mul-float/2addr v11, v12

    add-float/2addr v9, v11

    iget v11, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mBuffer:F

    neg-float v11, v11

    iget-object v12, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    invoke-virtual {v12}, Ljava/util/Random;->nextFloat()F

    move-result v12

    iget v13, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    sub-float/2addr v13, v6

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-virtual {v1, v9, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSpace:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v9, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSpace:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    const/4 v11, 0x0

    :goto_1
    const/16 v12, 0x22

    if-ge v11, v12, :cond_3

    int-to-float v12, v11

    const/high16 v13, 0x42080000    # 34.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    add-int/2addr v12, v8

    iget-object v14, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v15, v11, 0x4

    add-int/2addr v15, v10

    iget-object v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v17, v11, 0x4

    add-int/lit8 v17, v17, 0x2

    aget v8, v8, v17

    int-to-float v13, v12

    mul-float/2addr v13, v3

    add-float/2addr v8, v13

    add-float/2addr v8, v6

    rem-float/2addr v8, v6

    aput v8, v14, v15

    iget-object v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v13, v11, 0x4

    add-int/lit8 v13, v13, 0x3

    iget-object v14, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v15, v11, 0x4

    add-int/lit8 v15, v15, 0x3

    aget v14, v14, v15

    int-to-float v15, v12

    mul-float/2addr v15, v4

    add-float/2addr v14, v15

    add-float/2addr v14, v9

    rem-float/2addr v14, v9

    aput v14, v8, v13

    iget-object v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v13, v11, 0x4

    add-int/2addr v13, v7

    if-eqz v5, :cond_1

    iget-object v15, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v18, v11, 0x4

    add-int/lit8 v18, v18, 0x2

    aget v15, v15, v18

    iget v7, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v7, v3

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v7, v7, v17

    int-to-float v14, v12

    mul-float/2addr v7, v14

    sub-float/2addr v15, v7

    goto :goto_2

    :cond_1
    const/high16 v15, -0x3d380000    # -100.0f

    :goto_2
    aput v15, v8, v13

    iget-object v7, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v8, v11, 0x4

    const/4 v13, 0x1

    add-int/2addr v8, v13

    if-eqz v5, :cond_2

    iget-object v14, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v15, v11, 0x4

    add-int/lit8 v15, v15, 0x3

    aget v14, v14, v15

    iget v15, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v15, v4

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    int-to-float v13, v12

    mul-float/2addr v15, v13

    sub-float/2addr v14, v15

    goto :goto_3

    :cond_2
    const/high16 v14, -0x3d380000    # -100.0f

    :goto_3
    aput v14, v7, v8

    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    array-length v6, v6

    div-int/2addr v6, v10

    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v10, :cond_5

    iget-object v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSize:F

    add-int/lit8 v11, v7, 0x1

    int-to-float v11, v11

    mul-float/2addr v9, v11

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz v5, :cond_4

    iget-object v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int v9, v7, v6

    iget-object v11, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v9, v6, v11}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_4
    iget-object v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int v9, v7, v6

    iget-object v11, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v9, v6, v11}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public whitelist getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getWarp()F
    .locals 1

    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    return v0
.end method

.method public whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSpace:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSize:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mBuffer:F

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSpace:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mBuffer:F

    float-to-int v1, v1

    neg-int v1, v1

    iget v2, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mBuffer:F

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSpace:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSpace:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x22

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v4, v2, 0x4

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v5, v0

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v5, v1

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v6, v2, 0x4

    aget v5, v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 0

    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public blacklist setVelocity(FF)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVx:F

    iput p2, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVy:F

    return-void
.end method

.method public blacklist setWarp(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    return-void
.end method

.method public blacklist update(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    return-void
.end method
