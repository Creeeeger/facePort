.class public final Lcom/google/android/material/math/MathUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dist(FFFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    float-to-double p0, p2

    float-to-double p2, p3

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distanceToFurthestCorner(FFFF)F
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v1

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v2

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result p2

    invoke-static {p0, p1, v0, p3}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result p0

    cmpl-float p1, v1, v2

    if-lez p1, :cond_0

    cmpl-float p1, v1, p2

    if-lez p1, :cond_0

    cmpl-float p1, v1, p0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float p1, v2, p2

    if-lez p1, :cond_1

    cmpl-float p1, v2, p0

    if-lez p1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    cmpl-float p1, p2, p0

    if-lez p1, :cond_2

    move v1, p2

    goto :goto_0

    :cond_2
    move v1, p0

    :goto_0
    return v1
.end method

.method public static lerp(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    return p2
.end method
