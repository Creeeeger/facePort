.class public Lcom/samsung/android/graphics/spr/animation/interpolator/CircEaseInOut;
.super Ljava/lang/Object;
.source "CircEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private blacklist inout(F)F
    .locals 7
    .param p1, "t"    # F

    .line 52
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 53
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_0

    .line 54
    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    mul-float v0, p1, p1

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v0, v3

    mul-double/2addr v0, v5

    double-to-float v0, v0

    return v0

    .line 56
    :cond_0
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    sub-float v0, p1, v0

    move p1, v0

    mul-float/2addr v0, p1

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v3

    mul-double/2addr v0, v5

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/CircEaseInOut;->inout(F)F

    move-result v0

    return v0
.end method
