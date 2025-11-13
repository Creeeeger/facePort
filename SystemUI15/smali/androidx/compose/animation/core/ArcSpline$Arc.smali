.class public final Landroidx/compose/animation/core/ArcSpline$Arc;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/compose/animation/core/ArcSpline$Arc$Companion;

.field public static _ourPercent:[F


# instance fields
.field public final arcDistance:F

.field public final arcVelocity:F

.field public final ellipseA:F

.field public final ellipseB:F

.field public final ellipseCenterX:F

.field public final ellipseCenterY:F

.field public final isLinear:Z

.field public final isVertical:Z

.field public final lut:[F

.field public final oneOverDeltaTime:F

.field public final time1:F

.field public final time2:F

.field public tmpCosAngle:F

.field public tmpSinAngle:F

.field public final x1:F

.field public final x2:F

.field public final y1:F

.field public final y2:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/ArcSpline$Arc$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/animation/core/ArcSpline$Arc$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/animation/core/ArcSpline$Arc;->Companion:Landroidx/compose/animation/core/ArcSpline$Arc$Companion;

    return-void
.end method

.method public constructor <init>(IFFFFFF)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->time1:F

    iput v3, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->time2:F

    iput v4, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->x1:F

    iput v5, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->y1:F

    iput v6, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->x2:F

    iput v7, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->y2:F

    sub-float v8, v6, v4

    sub-float v9, v7, v5

    const/4 v10, 0x0

    const/4 v12, 0x1

    if-eq v1, v12, :cond_2

    const/4 v13, 0x4

    if-eq v1, v13, :cond_3

    const/4 v13, 0x5

    if-eq v1, v13, :cond_1

    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    cmpg-float v13, v9, v10

    if-gez v13, :cond_0

    :cond_2
    :goto_0
    move v13, v12

    goto :goto_1

    :cond_3
    cmpl-float v13, v9, v10

    if-lez v13, :cond_0

    goto :goto_0

    :goto_1
    iput-boolean v13, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->isVertical:Z

    int-to-float v14, v12

    sub-float v15, v3, v2

    div-float/2addr v14, v15

    iput v14, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->oneOverDeltaTime:F

    const/4 v15, 0x3

    if-ne v15, v1, :cond_4

    move v1, v12

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    const/16 v15, 0x65

    if-nez v1, :cond_5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v16

    const v17, 0x3a83126f    # 0.001f

    cmpg-float v16, v16, v17

    if-ltz v16, :cond_5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v16, v16, v17

    if-gez v16, :cond_6

    :cond_5
    move v11, v12

    goto/16 :goto_c

    :cond_6
    new-array v2, v15, [F

    iput-object v2, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->lut:[F

    if-eqz v13, :cond_7

    const/4 v3, -0x1

    goto :goto_3

    :cond_7
    move v3, v12

    :goto_3
    int-to-float v3, v3

    mul-float/2addr v8, v3

    iput v8, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseA:F

    if-eqz v13, :cond_8

    move v3, v12

    goto :goto_4

    :cond_8
    const/4 v3, -0x1

    :goto_4
    int-to-float v3, v3

    mul-float/2addr v9, v3

    iput v9, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseB:F

    if-eqz v13, :cond_9

    move v3, v6

    goto :goto_5

    :cond_9
    move v3, v4

    :goto_5
    iput v3, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterX:F

    if-eqz v13, :cond_a

    move v3, v5

    goto :goto_6

    :cond_a
    move v3, v7

    :goto_6
    iput v3, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterY:F

    sub-float v3, v6, v4

    sub-float v4, v5, v7

    sget-object v5, Landroidx/compose/animation/core/ArcSpline$Arc;->Companion:Landroidx/compose/animation/core/ArcSpline$Arc$Companion;

    invoke-static {v5}, Landroidx/compose/animation/core/ArcSpline$Arc$Companion;->access$getOurPercent(Landroidx/compose/animation/core/ArcSpline$Arc$Companion;)[F

    move-result-object v6

    array-length v6, v6

    move v8, v10

    move v9, v8

    move v13, v9

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_c

    const-wide v14, 0x4056800000000000L    # 90.0

    int-to-double v10, v7

    mul-double/2addr v10, v14

    invoke-static {v5}, Landroidx/compose/animation/core/ArcSpline$Arc$Companion;->access$getOurPercent(Landroidx/compose/animation/core/ArcSpline$Arc$Companion;)[F

    move-result-object v14

    array-length v14, v14

    sub-int/2addr v14, v12

    int-to-double v14, v14

    div-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    double-to-float v10, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v14, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v14, v3

    mul-float/2addr v10, v4

    if-lez v7, :cond_b

    sub-float v9, v14, v9

    move/from16 p2, v3

    float-to-double v2, v9

    sub-float v9, v10, v13

    float-to-double v12, v9

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v8, v2

    invoke-static {v5}, Landroidx/compose/animation/core/ArcSpline$Arc$Companion;->access$getOurPercent(Landroidx/compose/animation/core/ArcSpline$Arc$Companion;)[F

    move-result-object v2

    aput v8, v2, v7

    goto :goto_8

    :cond_b
    move/from16 p2, v3

    :goto_8
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, p2

    move v13, v10

    move v9, v14

    const/4 v10, 0x0

    const/4 v12, 0x1

    goto :goto_7

    :cond_c
    iput v8, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcDistance:F

    invoke-static {v5}, Landroidx/compose/animation/core/ArcSpline$Arc$Companion;->access$getOurPercent(Landroidx/compose/animation/core/ArcSpline$Arc$Companion;)[F

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_d

    invoke-static {v5}, Landroidx/compose/animation/core/ArcSpline$Arc$Companion;->access$getOurPercent(Landroidx/compose/animation/core/ArcSpline$Arc$Companion;)[F

    move-result-object v4

    aget v6, v4, v3

    div-float/2addr v6, v8

    aput v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_d
    iget-object v2, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->lut:[F

    array-length v3, v2

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_10

    int-to-float v6, v4

    array-length v7, v2

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5}, Landroidx/compose/animation/core/ArcSpline$Arc$Companion;->access$getOurPercent(Landroidx/compose/animation/core/ArcSpline$Arc$Companion;)[F

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v8, v6}, Ljava/util/Arrays;->binarySearch([FIIF)I

    move-result v7

    if-ltz v7, :cond_e

    int-to-float v6, v7

    invoke-static {v5}, Landroidx/compose/animation/core/ArcSpline$Arc$Companion;->access$getOurPercent(Landroidx/compose/animation/core/ArcSpline$Arc$Companion;)[F

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v2, v4

    move v11, v8

    const/4 v10, -0x1

    const/4 v12, 0x0

    goto :goto_b

    :cond_e
    const/4 v8, 0x1

    const/4 v10, -0x1

    if-ne v7, v10, :cond_f

    const/4 v12, 0x0

    aput v12, v2, v4

    move v11, v8

    goto :goto_b

    :cond_f
    const/4 v12, 0x0

    neg-int v7, v7

    add-int/lit8 v13, v7, -0x2

    sub-int/2addr v7, v8

    int-to-float v8, v13

    invoke-static {v5}, Landroidx/compose/animation/core/ArcSpline$Arc$Companion;->access$getOurPercent(Landroidx/compose/animation/core/ArcSpline$Arc$Companion;)[F

    move-result-object v14

    aget v14, v14, v13

    sub-float/2addr v6, v14

    invoke-static {v5}, Landroidx/compose/animation/core/ArcSpline$Arc$Companion;->access$getOurPercent(Landroidx/compose/animation/core/ArcSpline$Arc$Companion;)[F

    move-result-object v14

    aget v7, v14, v7

    invoke-static {v5}, Landroidx/compose/animation/core/ArcSpline$Arc$Companion;->access$getOurPercent(Landroidx/compose/animation/core/ArcSpline$Arc$Companion;)[F

    move-result-object v14

    aget v13, v14, v13

    sub-float/2addr v7, v13

    div-float/2addr v6, v7

    add-float/2addr v6, v8

    invoke-static {v5}, Landroidx/compose/animation/core/ArcSpline$Arc$Companion;->access$getOurPercent(Landroidx/compose/animation/core/ArcSpline$Arc$Companion;)[F

    move-result-object v7

    array-length v7, v7

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v2, v4

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_10
    iget v2, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcDistance:F

    iget v3, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->oneOverDeltaTime:F

    mul-float/2addr v2, v3

    iput v2, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcVelocity:F

    move v12, v1

    goto :goto_d

    :goto_c
    float-to-double v4, v9

    float-to-double v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v1, v4

    iput v1, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcDistance:F

    mul-float/2addr v1, v14

    iput v1, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcVelocity:F

    sub-float v1, v3, v2

    div-float/2addr v8, v1

    iput v8, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterX:F

    sub-float v1, v3, v2

    div-float/2addr v9, v1

    iput v9, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterY:F

    new-array v1, v15, [F

    iput-object v1, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->lut:[F

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseA:F

    iput v1, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseB:F

    move v12, v11

    :goto_d
    iput-boolean v12, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->isLinear:Z

    return-void
.end method


# virtual methods
.method public final calcDX()F
    .locals 6

    iget v0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseA:F

    iget v1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpCosAngle:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseB:F

    neg-float v1, v1

    iget v2, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpSinAngle:F

    mul-float/2addr v1, v2

    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcVelocity:F

    div-float/2addr v2, v1

    iget-boolean p0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->isVertical:Z

    if-eqz p0, :cond_0

    neg-float p0, v0

    mul-float/2addr p0, v2

    goto :goto_0

    :cond_0
    mul-float p0, v0, v2

    :goto_0
    return p0
.end method

.method public final calcDY()F
    .locals 6

    iget v0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseA:F

    iget v1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpCosAngle:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseB:F

    neg-float v1, v1

    iget v2, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpSinAngle:F

    mul-float/2addr v1, v2

    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    iget v2, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcVelocity:F

    div-float/2addr v2, v0

    iget-boolean p0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->isVertical:Z

    if-eqz p0, :cond_0

    neg-float p0, v1

    mul-float/2addr p0, v2

    goto :goto_0

    :cond_0
    mul-float p0, v1, v2

    :goto_0
    return p0
.end method

.method public final setPoint(F)V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->isVertical:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->time2:F

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->time1:F

    sub-float v0, p1, v0

    :goto_0
    iget p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->oneOverDeltaTime:F

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    cmpg-float v1, v0, p1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, p1

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->lut:[F

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    aget v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget p1, p1, v1

    invoke-static {p1, v2, v0, v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result p1

    :goto_1
    const v0, 0x3fc90fdb

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    iput p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpSinAngle:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpCosAngle:F

    return-void
.end method
