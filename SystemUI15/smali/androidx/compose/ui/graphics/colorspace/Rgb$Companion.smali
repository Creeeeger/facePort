.class public final Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;-><init>()V

    return-void
.end method

.method public static final access$computeWhitePoint(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x3

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)V

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 v0, 0x1

    aget v0, p0, v0

    add-float v1, p1, v0

    const/4 v2, 0x2

    aget p0, p0, v2

    add-float/2addr v1, p0

    new-instance p0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    div-float/2addr p1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    return-object p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static area([F)F
    .locals 7

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x3

    aget v3, p0, v3

    const/4 v4, 0x4

    aget v4, p0, v4

    const/4 v5, 0x5

    aget p0, p0, v5

    mul-float v5, v0, v3

    mul-float v6, v1, v4

    add-float/2addr v6, v5

    mul-float v5, v2, p0

    add-float/2addr v5, v6

    mul-float/2addr v3, v4

    sub-float/2addr v5, v3

    mul-float/2addr v1, v2

    sub-float/2addr v5, v1

    mul-float/2addr v0, p0

    sub-float/2addr v5, v0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v5, p0

    const/4 p0, 0x0

    cmpg-float p0, v5, p0

    if-gez p0, :cond_0

    neg-float v5, v5

    :cond_0
    return v5
.end method

.method public static computePrimaries$ui_graphics_release([F)[F
    .locals 13

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)V

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)V

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    invoke-static {p0, v3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)V

    const/4 p0, 0x0

    aget v4, v1, p0

    const/4 v5, 0x1

    aget v6, v1, v5

    add-float v7, v4, v6

    const/4 v8, 0x2

    aget v1, v1, v8

    add-float/2addr v7, v1

    aget v1, v2, p0

    aget v9, v2, v5

    add-float v10, v1, v9

    aget v2, v2, v8

    add-float/2addr v10, v2

    aget v2, v3, p0

    aget v11, v3, v5

    add-float v12, v2, v11

    aget v3, v3, v8

    add-float/2addr v12, v3

    div-float/2addr v4, v7

    div-float/2addr v6, v7

    div-float/2addr v1, v10

    div-float/2addr v9, v10

    div-float/2addr v2, v12

    div-float/2addr v11, v12

    const/4 v3, 0x6

    new-array v3, v3, [F

    aput v4, v3, p0

    aput v6, v3, v5

    aput v1, v3, v8

    aput v9, v3, v0

    const/4 p0, 0x4

    aput v2, v3, p0

    const/4 p0, 0x5

    aput v11, v3, p0

    return-object v3

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static cross(FFFF)F
    .locals 0

    mul-float/2addr p0, p3

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    return p0
.end method
