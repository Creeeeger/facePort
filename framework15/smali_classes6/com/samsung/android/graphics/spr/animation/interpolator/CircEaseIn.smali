.class public Lcom/samsung/android/graphics/spr/animation/interpolator/CircEaseIn;
.super Ljava/lang/Object;
.source "CircEaseIn.java"

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

.method private blacklist in(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p1, p1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    neg-double v0, v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/CircEaseIn;->in(F)F

    move-result v0

    return v0
.end method
