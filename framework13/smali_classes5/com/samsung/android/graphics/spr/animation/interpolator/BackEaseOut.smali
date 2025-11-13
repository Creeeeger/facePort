.class public Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseOut;
.super Ljava/lang/Object;
.source "BackEaseOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist overshot:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(F)V
    .locals 0
    .param p1, "overshot"    # F

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseOut;->overshot:F

    .line 45
    return-void
.end method

.method private blacklist out(FF)F
    .locals 3
    .param p1, "t"    # F
    .param p2, "o"    # F

    .line 53
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 54
    const p2, 0x3fd9cd60

    .line 56
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    move p1, v1

    mul-float/2addr v1, p1

    add-float v2, p2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .line 49
    iget v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseOut;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseOut;->out(FF)F

    move-result v0

    return v0
.end method
