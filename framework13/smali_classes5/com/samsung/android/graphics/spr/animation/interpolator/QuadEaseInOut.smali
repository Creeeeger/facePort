.class public Lcom/samsung/android/graphics/spr/animation/interpolator/QuadEaseInOut;
.super Ljava/lang/Object;
.source "QuadEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private blacklist inout(F)F
    .locals 4
    .param p1, "t"    # F

    .line 53
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 54
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    .line 55
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    return v0

    .line 57
    :cond_0
    const/high16 v2, -0x41000000    # -0.5f

    sub-float v3, p1, v1

    move p1, v3

    sub-float v0, p1, v0

    mul-float/2addr v3, v0

    sub-float/2addr v3, v1

    mul-float/2addr v3, v2

    return v3
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuadEaseInOut;->inout(F)F

    move-result v0

    return v0
.end method
