.class final Landroidx/interpolator/view/animation/LookupTableInterpolator;
.super Ljava/lang/Object;
.source "LookupTableInterpolator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static interpolate([FFF)F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "values",
            "stepSize",
            "input"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_1

    return v0

    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    mul-float/2addr v1, p1

    sub-float v2, p2, v1

    div-float v3, v2, p1

    aget v4, p0, v0

    add-int/lit8 v5, v0, 0x1

    aget v5, p0, v5

    aget v6, p0, v0

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    return v4
.end method
