.class public Lcom/samsung/android/graphics/spr/animation/interpolator/ExpoEaseOut;
.super Ljava/lang/Object;
.source "ExpoEaseOut.java"

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

.method private blacklist out(F)F
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float/2addr v0, p1

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    neg-double v3, v3

    add-double/2addr v1, v3

    :goto_0
    double-to-float v0, v1

    return v0
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/ExpoEaseOut;->out(F)F

    move-result v0

    return v0
.end method
