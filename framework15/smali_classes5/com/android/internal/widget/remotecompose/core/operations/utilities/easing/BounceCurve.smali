.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "BounceCurve.java"


# static fields
.field private static final blacklist D1:F = 2.75f

.field private static final blacklist N1:F = 7.5625f


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;->mType:I

    return-void
.end method


# virtual methods
.method public blacklist get(F)F
    .locals 7

    move v0, p1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    return v1

    :cond_0
    const v1, 0x3eba2e8c

    cmpg-float v1, v0, v1

    const/high16 v2, 0x40f20000    # 7.5625f

    if-gez v1, :cond_1

    mul-float/2addr v2, v0

    mul-float/2addr v2, v0

    add-float/2addr v2, v0

    const v1, 0x3f3bbbbc

    mul-float/2addr v2, v1

    return v2

    :cond_1
    const v1, 0x3f3a2e8c

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    const v1, 0x3f0ba2e9

    sub-float/2addr v0, v1

    mul-float/2addr v2, v0

    mul-float/2addr v2, v0

    const/high16 v1, 0x3f400000    # 0.75f

    add-float/2addr v2, v1

    return v2

    :cond_2
    float-to-double v3, v0

    const-wide v5, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v1, v3, v5

    if-gez v1, :cond_3

    const v1, 0x3f51745d

    sub-float/2addr v0, v1

    mul-float/2addr v2, v0

    mul-float/2addr v2, v0

    const/high16 v1, 0x3f700000    # 0.9375f

    add-float/2addr v2, v1

    return v2

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v1

    if-gtz v3, :cond_4

    const v1, 0x3f745d17

    sub-float/2addr v0, v1

    mul-float/2addr v2, v0

    mul-float/2addr v2, v0

    const/high16 v1, 0x3f7c0000    # 0.984375f

    add-float/2addr v2, v1

    return v2

    :cond_4
    return v1
.end method

.method public blacklist getDiff(F)F
    .locals 7

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    const v1, 0x3eba2e8c

    cmpg-float v1, p1, v1

    const/high16 v2, 0x41720000    # 15.125f

    if-gez v1, :cond_1

    mul-float/2addr v2, p1

    const v0, 0x3fae8ba3

    div-float/2addr v2, v0

    const v0, 0x3f3bbbbc

    add-float/2addr v2, v0

    return v2

    :cond_1
    const v1, 0x3f3a2e8c

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    const v0, 0x3f0ba2e9

    sub-float v0, p1, v0

    mul-float/2addr v0, v2

    return v0

    :cond_2
    float-to-double v3, p1

    const-wide v5, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v1, v3, v5

    if-gez v1, :cond_3

    const v0, 0x3f51745d

    sub-float v0, p1, v0

    mul-float/2addr v0, v2

    return v0

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_4

    const v0, 0x3f745d17

    sub-float v0, p1, v0

    mul-float/2addr v0, v2

    return v0

    :cond_4
    return v0
.end method
