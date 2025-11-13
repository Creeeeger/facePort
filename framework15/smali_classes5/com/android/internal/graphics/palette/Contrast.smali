.class public Lcom/android/internal/graphics/palette/Contrast;
.super Ljava/lang/Object;
.source "Contrast.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist contrastYs(FF)F
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpl-float v1, v0, p0

    if-nez v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    const/high16 v2, 0x40a00000    # 5.0f

    add-float v3, v0, v2

    add-float/2addr v2, v1

    div-float/2addr v3, v2

    return v3
.end method

.method public static blacklist darkerY(FF)F
    .locals 5

    nop

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float v1, p1, v0

    sub-float/2addr v0, v1

    add-float/2addr v0, p0

    div-float/2addr v0, p1

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    return v1

    :cond_0
    return v0
.end method

.method public static blacklist lighterY(FF)F
    .locals 5

    nop

    const/high16 v0, 0x40a00000    # 5.0f

    add-float/2addr v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, -0x3f600000    # -5.0f

    add-float/2addr v0, v1

    float-to-double v1, v0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    return v1

    :cond_0
    return v0
.end method

.method public static blacklist lstarToY(F)F
    .locals 8

    const/high16 v0, 0x41000000    # 8.0f

    cmpl-float v1, p0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    if-lez v1, :cond_0

    float-to-double v4, p0

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float v1, v4

    return v1

    :cond_0
    const v1, 0x4461c000    # 903.0f

    div-float v1, p0, v1

    float-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-float v1, v4

    return v1
.end method

.method public static blacklist yToLstar(F)F
    .locals 4

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    const v0, 0x3c111aa7

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    const v1, 0x4461d2f7

    mul-float/2addr v1, p0

    return v1

    :cond_0
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x42e80000    # 116.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x41800000    # 16.0f

    sub-float/2addr v2, v3

    return v2
.end method
