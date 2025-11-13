.class final Landroid/hardware/LegacySensorManager$LmsFilter;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LmsFilter"
.end annotation


# static fields
.field private static final greylist-max-o COUNT:I = 0xc

.field private static final greylist-max-o PREDICTION_RATIO:F = 0.33333334f

.field private static final greylist-max-o PREDICTION_TIME:F = 0.08f

.field private static final greylist-max-o SENSORS_RATE_MS:I = 0x14


# instance fields
.field private greylist-max-o mIndex:I

.field private greylist-max-o mT:[J

.field private greylist-max-o mV:[F


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    const/16 v0, 0xc

    iput v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    return-void
.end method


# virtual methods
.method public greylist-max-o filter(JF)F
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    const v2, 0x3089705f    # 1.0E-9f

    iget-object v3, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aget v3, v3, v4

    sub-float v4, v1, v3

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v4, v4, v5

    const/high16 v6, 0x43b40000    # 360.0f

    if-lez v4, :cond_0

    sub-float/2addr v1, v6

    goto :goto_0

    :cond_0
    sub-float v4, v3, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    add-float/2addr v1, v6

    :cond_1
    :goto_0
    iget v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    iget v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    const/16 v5, 0x18

    const/16 v7, 0xc

    if-lt v4, v5, :cond_2

    iput v7, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    :cond_2
    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput v1, v4, v5

    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    iget v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput-wide p1, v4, v5

    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    sub-int/2addr v5, v7

    aput v1, v4, v5

    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    iget v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    sub-int/2addr v5, v7

    aput-wide p1, v4, v5

    const/4 v4, 0x0

    move v5, v4

    move v7, v4

    move v8, v4

    move v9, v4

    move v10, v4

    const/4 v11, 0x0

    :goto_1
    const/16 v12, 0xb

    if-ge v11, v12, :cond_3

    iget v12, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v12, v12, -0x1

    sub-int/2addr v12, v11

    iget-object v13, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    aget v13, v13, v12

    iget-object v14, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v14, v14, v12

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    iget-object v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    add-int/lit8 v18, v12, 0x1

    aget-wide v18, v6, v18

    div-long v18, v18, v16

    add-long v14, v14, v18

    sub-long v14, v14, p1

    long-to-float v6, v14

    const v14, 0x3089705f    # 1.0E-9f

    mul-float/2addr v6, v14

    iget-object v15, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v15, v15, v12

    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    add-int/lit8 v18, v12, 0x1

    aget-wide v18, v4, v18

    move v4, v1

    sub-long v0, v15, v18

    long-to-float v0, v0

    mul-float/2addr v0, v14

    mul-float/2addr v0, v0

    mul-float v1, v13, v0

    add-float/2addr v10, v1

    mul-float v1, v6, v0

    mul-float/2addr v1, v6

    add-float/2addr v9, v1

    mul-float v1, v6, v0

    add-float/2addr v8, v1

    mul-float v1, v6, v0

    mul-float/2addr v1, v13

    add-float/2addr v7, v1

    add-float/2addr v5, v0

    add-int/lit8 v11, v11, 0x1

    const/high16 v6, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    move v1, v4

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move v4, v1

    mul-float v0, v10, v9

    mul-float v1, v8, v7

    add-float/2addr v0, v1

    mul-float v1, v5, v9

    mul-float v6, v8, v8

    add-float/2addr v1, v6

    div-float/2addr v0, v1

    mul-float v1, v5, v0

    sub-float/2addr v1, v10

    div-float/2addr v1, v8

    const v6, 0x3da3d70a    # 0.08f

    mul-float/2addr v6, v1

    add-float/2addr v6, v0

    const v12, 0x3b360b61

    mul-float/2addr v6, v12

    const/4 v12, 0x0

    cmpl-float v13, v6, v12

    if-ltz v13, :cond_4

    move v12, v6

    goto :goto_2

    :cond_4
    neg-float v12, v6

    :goto_2
    const/high16 v13, 0x3f000000    # 0.5f

    cmpl-float v12, v12, v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-ltz v12, :cond_5

    add-float/2addr v13, v6

    float-to-double v12, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-float v12, v12

    sub-float v12, v6, v12

    add-float v6, v12, v14

    :cond_5
    const/4 v12, 0x0

    cmpg-float v12, v6, v12

    if-gez v12, :cond_6

    add-float/2addr v6, v14

    :cond_6
    const/high16 v12, 0x43b40000    # 360.0f

    mul-float/2addr v6, v12

    return v6
.end method
