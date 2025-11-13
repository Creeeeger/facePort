.class public Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;
.super Ljava/lang/Object;
.source "SineInOut90.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final blacklist segments:[[F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    new-array v4, v0, [F

    fill-array-data v4, :array_3

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    filled-new-array {v1, v2, v3, v4, v0}, [[F

    move-result-object v0

    sput-object v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;->segments:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3e7ced91    # 0.247f
    .end array-data

    :array_1
    .array-data 4
        0x3e7ced91    # 0.247f
        0x3ef5c28f    # 0.48f
        0x3f333333    # 0.7f
    .end array-data

    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f55c28f    # 0.835f
        0x3f67ae14    # 0.905f
    .end array-data

    :array_3
    .array-data 4
        0x3f67ae14    # 0.905f
        0x3f747ae1    # 0.955f
        0x3f7a5e35    # 0.978f
    .end array-data

    :array_4
    .array-data 4
        0x3f7a5e35    # 0.978f
        0x3f7ff972    # 0.9999f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 11

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, p1, v0

    sget-object v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;->segments:[[F

    array-length v2, v2

    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;->segments:[[F

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    sget-object v4, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;->segments:[[F

    array-length v4, v4

    add-int/lit8 v3, v4, -0x1

    :cond_0
    if-gez v3, :cond_1

    const/4 v3, 0x0

    :cond_1
    int-to-float v4, v3

    int-to-float v6, v2

    div-float v6, v0, v6

    mul-float/2addr v4, v6

    sub-float v4, v1, v4

    int-to-float v6, v2

    mul-float/2addr v4, v6

    sget-object v6, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;->segments:[[F

    aget-object v6, v6, v3

    const/4 v7, 0x0

    aget v8, v6, v7

    const/high16 v9, 0x40000000    # 2.0f

    sub-float v10, v0, v4

    mul-float/2addr v10, v9

    aget v5, v6, v5

    aget v9, v6, v7

    sub-float/2addr v5, v9

    mul-float/2addr v10, v5

    const/4 v5, 0x2

    aget v5, v6, v5

    aget v7, v6, v7

    sub-float/2addr v5, v7

    mul-float/2addr v5, v4

    add-float/2addr v10, v5

    mul-float/2addr v10, v4

    add-float/2addr v8, v10

    mul-float/2addr v8, v0

    const/4 v0, 0x0

    add-float/2addr v8, v0

    return v8
.end method
