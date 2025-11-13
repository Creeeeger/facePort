.class public final Lcom/google/ux/material/libmonet/utils/MathUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matrixMultiply([D[[D)[D
    .locals 17

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-object v3, p1, v0

    aget-wide v4, v3, v0

    mul-double/2addr v4, v1

    const/4 v6, 0x1

    aget-wide v7, p0, v6

    aget-wide v9, v3, v6

    mul-double/2addr v9, v7

    add-double/2addr v9, v4

    const/4 v4, 0x2

    aget-wide v11, p0, v4

    aget-wide v13, v3, v4

    mul-double/2addr v13, v11

    add-double/2addr v13, v9

    aget-object v3, p1, v6

    aget-wide v9, v3, v0

    mul-double/2addr v9, v1

    aget-wide v15, v3, v6

    mul-double/2addr v15, v7

    add-double/2addr v15, v9

    aget-wide v9, v3, v4

    mul-double/2addr v9, v11

    add-double/2addr v9, v15

    aget-object v3, p1, v4

    aget-wide v15, v3, v0

    mul-double/2addr v1, v15

    aget-wide v15, v3, v6

    mul-double/2addr v7, v15

    add-double/2addr v7, v1

    aget-wide v1, v3, v4

    mul-double/2addr v11, v1

    add-double/2addr v11, v7

    const/4 v1, 0x3

    new-array v1, v1, [D

    aput-wide v13, v1, v0

    aput-wide v9, v1, v6

    aput-wide v11, v1, v4

    return-object v1
.end method

.method public static sanitizeDegreesDouble(D)D
    .locals 4

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    return-wide p0
.end method
