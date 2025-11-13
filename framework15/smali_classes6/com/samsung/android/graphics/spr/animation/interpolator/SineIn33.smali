.class public Lcom/samsung/android/graphics/spr/animation/interpolator/SineIn33;
.super Ljava/lang/Object;
.source "SineIn33.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final blacklist segments:[[F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    filled-new-array {v1, v0}, [[F

    move-result-object v0

    sput-object v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineIn33;->segments:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3a83126f    # 0.001f
        0x3ea3d70a    # 0.32f
    .end array-data

    :array_1
    .array-data 4
        0x3ea3d70a    # 0.32f
        0x3f170a3d    # 0.59f
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

    sget-object v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineIn33;->segments:[[F

    array-length v2, v2

    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Lcom/samsung/android/graphics/spr/animation/interpolator/SineIn33;->segments:[[F

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    sget-object v4, Lcom/samsung/android/graphics/spr/animation/interpolator/SineIn33;->segments:[[F

    array-length v4, v4

    add-int/lit8 v3, v4, -0x1

    :cond_0
    int-to-float v4, v3

    int-to-float v6, v2

    div-float v6, v0, v6

    mul-float/2addr v4, v6

    sub-float v4, v1, v4

    int-to-float v6, v2

    mul-float/2addr v4, v6

    sget-object v6, Lcom/samsung/android/graphics/spr/animation/interpolator/SineIn33;->segments:[[F

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
