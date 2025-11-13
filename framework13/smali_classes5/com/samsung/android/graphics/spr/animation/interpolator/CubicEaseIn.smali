.class public Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;
.super Ljava/lang/Object;
.source "CubicEaseIn.java"

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

.method private blacklist in(F)F
    .locals 1
    .param p1, "t"    # F

    .line 52
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;->in(F)F

    move-result v0

    return v0
.end method
