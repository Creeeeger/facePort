.class public Lcom/samsung/android/graphics/spr/animation/interpolator/CircEaseInOut;
.super Ljava/lang/Object;
.source "CircEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
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

.method private blacklist inout(F)F
    .locals 5

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_0

    mul-float v0, p1, p1

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v0, v3

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_0
    sub-float v0, p1, v0

    move p1, v0

    mul-float/2addr v0, p1

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/CircEaseInOut;->inout(F)F

    move-result v0

    return v0
.end method
