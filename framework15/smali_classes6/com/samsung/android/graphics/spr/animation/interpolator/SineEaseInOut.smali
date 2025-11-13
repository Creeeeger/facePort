.class public Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseInOut;
.super Ljava/lang/Object;
.source "SineEaseInOut.java"

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
    .locals 4

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    float-to-double v2, p1

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseInOut;->inout(F)F

    move-result v0

    return v0
.end method
