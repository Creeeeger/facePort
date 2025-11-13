.class public final Landroidx/constraintlayout/core/motion/utils/Schlick;
.super Landroidx/constraintlayout/core/motion/utils/Easing;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mS:D

.field public mT:D


# virtual methods
.method public final get(D)D
    .locals 11

    .line 1
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mT:D

    .line 2
    .line 3
    cmpg-double v2, p1, v0

    .line 4
    .line 5
    iget-wide v3, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    .line 6
    .line 7
    if-gez v2, :cond_0

    .line 8
    .line 9
    mul-double v5, v0, p1

    .line 10
    .line 11
    sub-double/2addr v0, p1

    .line 12
    mul-double/2addr v0, v3

    .line 13
    add-double/2addr v0, p1

    .line 14
    div-double/2addr v5, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 17
    .line 18
    sub-double v7, v5, v0

    .line 19
    .line 20
    sub-double v9, p1, v5

    .line 21
    .line 22
    mul-double/2addr v9, v7

    .line 23
    sub-double/2addr v5, p1

    .line 24
    sub-double/2addr v0, p1

    .line 25
    mul-double/2addr v0, v3

    .line 26
    sub-double/2addr v5, v0

    .line 27
    div-double v5, v9, v5

    .line 28
    .line 29
    :goto_0
    return-wide v5
.end method

.method public final getDiff(D)D
    .locals 11

    .line 1
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mT:D

    .line 2
    .line 3
    cmpg-double v2, p1, v0

    .line 4
    .line 5
    iget-wide v3, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    .line 6
    .line 7
    if-gez v2, :cond_0

    .line 8
    .line 9
    mul-double v5, v3, v0

    .line 10
    .line 11
    mul-double/2addr v5, v0

    .line 12
    sub-double/2addr v0, p1

    .line 13
    mul-double/2addr v0, v3

    .line 14
    add-double/2addr v0, p1

    .line 15
    mul-double/2addr v0, v0

    .line 16
    div-double/2addr v5, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 19
    .line 20
    sub-double v7, v0, v5

    .line 21
    .line 22
    mul-double v9, v7, v3

    .line 23
    .line 24
    mul-double/2addr v9, v7

    .line 25
    neg-double v2, v3

    .line 26
    sub-double/2addr v0, p1

    .line 27
    mul-double/2addr v0, v2

    .line 28
    sub-double/2addr v0, p1

    .line 29
    add-double/2addr v0, v5

    .line 30
    mul-double/2addr v0, v0

    .line 31
    div-double v5, v9, v0

    .line 32
    .line 33
    :goto_0
    return-wide v5
.end method
