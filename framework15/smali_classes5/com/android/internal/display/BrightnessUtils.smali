.class public Lcom/android/internal/display/BrightnessUtils;
.super Ljava/lang/Object;
.source "BrightnessUtils.java"


# static fields
.field private static final blacklist A:F = 0.17883277f

.field private static final blacklist B:F = 0.28466892f

.field private static final blacklist C:F = 0.5599107f

.field private static final blacklist R:F = 0.5f


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist convertGammaToLinear(F)F
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    div-float v0, p0, v0

    invoke-static {v0}, Landroid/util/MathUtils;->sq(F)F

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x3f0f564f

    sub-float v0, p0, v0

    const v1, 0x3e371ff0

    div-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    const v1, 0x3e91c020

    add-float/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    div-float v2, v1, v2

    return v2
.end method

.method public static final blacklist convertLinearToGamma(F)F
    .locals 3

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    invoke-static {v0}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const v1, 0x3e91c020

    sub-float v1, v0, v1

    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v1

    const v2, 0x3e371ff0

    mul-float/2addr v1, v2

    const v2, 0x3f0f564f

    add-float/2addr v1, v2

    :goto_0
    return v1
.end method
