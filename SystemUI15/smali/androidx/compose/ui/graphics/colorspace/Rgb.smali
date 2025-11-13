.class public final Landroidx/compose/ui/graphics/colorspace/Rgb;
.super Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;

.field public static final DoubleIdentity:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda2;


# instance fields
.field public final eotf:Lkotlin/jvm/functions/Function1;

.field public final eotfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

.field public final eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

.field public final inverseTransform:[F

.field public final isSrgb:Z

.field public final max:F

.field public final min:F

.field public final oetf:Lkotlin/jvm/functions/Function1;

.field public final oetfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

.field public final oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

.field public final primaries:[F

.field public final transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

.field public final transform:[F

.field public final whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->Companion:Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->DoubleIdentity:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda2;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/colorspace/Rgb;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)V
    .locals 11

    iget-object v1, p1, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->name:Ljava/lang/String;

    iget-object v2, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    iget-object v5, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    iget-object v6, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    iget v7, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    iget v8, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    iget-object v9, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const/4 v10, -0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FD)V
    .locals 10

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->Companion:Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->computePrimaries$ui_graphics_release([F)[F

    move-result-object v3

    invoke-static {v0, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->access$computeWhitePoint(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    const/4 v9, -0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/TransferParameters;)V
    .locals 7

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->Companion:Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->computePrimaries$ui_graphics_release([F)[F

    move-result-object v3

    invoke-static {v0, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->access$computeWhitePoint(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;D)V
    .locals 9

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V
    .locals 20

    move-wide/from16 v1, p4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v1, v3

    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Rgb;->DoubleIdentity:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda2;

    if-nez v0, :cond_0

    move-object/from16 v17, v3

    goto :goto_0

    :cond_0
    new-instance v4, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda5;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v5}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda5;-><init>(DI)V

    move-object/from16 v17, v4

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    move-object/from16 v18, v3

    goto :goto_2

    :cond_1
    new-instance v3, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda5;

    const/4 v0, 0x1

    invoke-direct {v3, v1, v2, v0}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda5;-><init>(DI)V

    goto :goto_1

    :goto_2
    new-instance v19, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v0, v19

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/16 v15, 0x60

    const/16 v16, 0x0

    move-wide/from16 v1, p4

    invoke-direct/range {v0 .. v16}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, v19

    move/from16 v16, p8

    invoke-direct/range {v6 .. v16}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V
    .locals 11

    move-object v9, p4

    iget-wide v0, v9, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->e:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    iget-wide v5, v9, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->f:D

    if-nez v4, :cond_0

    cmpg-double v4, v5, v2

    if-nez v4, :cond_0

    new-instance v4, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda9;

    const/4 v7, 0x0

    invoke-direct {v4, p4, v7}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda9;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    :goto_0
    move-object v7, v4

    goto :goto_1

    :cond_0
    new-instance v4, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda9;

    const/4 v7, 0x1

    invoke-direct {v4, p4, v7}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda9;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    goto :goto_0

    :goto_1
    cmpg-double v0, v0, v2

    if-nez v0, :cond_1

    cmpg-double v0, v5, v2

    if-nez v0, :cond_1

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda9;

    const/4 v1, 0x2

    invoke-direct {v0, p4, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda9;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_1
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda9;

    const/4 v1, 0x3

    invoke-direct {v0, p4, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda9;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    goto :goto_2

    :goto_3
    const/4 v8, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v7

    move v7, v8

    move v8, v10

    move-object v9, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FF)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[F",
            "Landroidx/compose/ui/graphics/colorspace/WhitePoint;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "FF)V"
        }
    .end annotation

    new-instance v5, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda3;

    const/4 v0, 0x2

    move-object v1, p4

    invoke-direct {v5, p4, v0}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;I)V

    new-instance v6, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda3;

    const/4 v0, 0x3

    move-object/from16 v1, p5

    invoke-direct {v6, v1, v0}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;I)V

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V
    .locals 31

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    const/16 v5, 0x9

    const/16 v16, 0x2

    const/16 v17, 0x3

    const/16 v18, 0x4

    const/16 v19, 0x5

    const/4 v4, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v20, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Rgb:J

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v14, v2

    move v15, v3

    move-wide/from16 v2, v20

    move/from16 v4, p10

    move-object/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    iput v12, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    iput v13, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    move-object/from16 v0, p9

    iput-object v0, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    iput-object v10, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$oetf$1;

    invoke-direct {v0, v6}, Landroidx/compose/ui/graphics/colorspace/Rgb$oetf$1;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;)V

    iput-object v0, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetf:Lkotlin/jvm/functions/Function1;

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    invoke-direct {v0, v6, v14}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;I)V

    iput-object v0, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    iput-object v11, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;

    invoke-direct {v0, v6}, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;)V

    iput-object v0, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotf:Lkotlin/jvm/functions/Function1;

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    invoke-direct {v0, v6, v15}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;I)V

    iput-object v0, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    array-length v0, v7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    array-length v0, v7

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The color space\'s primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v2, 0x9

    :goto_0
    cmpl-float v0, v12, v13

    if-gez v0, :cond_11

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->Companion:Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v0, v1, [F

    array-length v3, v7

    if-ne v3, v2, :cond_2

    aget v3, v7, v14

    aget v4, v7, v15

    add-float v5, v3, v4

    aget v20, v7, v16

    add-float v5, v5, v20

    div-float/2addr v3, v5

    aput v3, v0, v14

    div-float/2addr v4, v5

    aput v4, v0, v15

    aget v3, v7, v17

    aget v4, v7, v18

    add-float v5, v3, v4

    aget v20, v7, v19

    add-float v5, v5, v20

    div-float/2addr v3, v5

    aput v3, v0, v16

    div-float/2addr v4, v5

    aput v4, v0, v17

    aget v3, v7, v1

    const/4 v4, 0x7

    aget v5, v7, v4

    add-float v4, v3, v5

    const/16 v20, 0x8

    aget v7, v7, v20

    add-float/2addr v4, v7

    div-float/2addr v3, v4

    aput v3, v0, v18

    div-float/2addr v5, v4

    aput v5, v0, v19

    goto :goto_1

    :cond_2
    invoke-static {v1, v1, v7, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto$default(II[F[F)V

    :goto_1
    iput-object v0, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v9, :cond_3

    aget v4, v0, v14

    aget v5, v0, v15

    aget v7, v0, v16

    aget v9, v0, v17

    aget v20, v0, v18

    aget v21, v0, v19

    iget v1, v8, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->x:F

    int-to-float v14, v15

    sub-float v25, v14, v4

    div-float v25, v25, v5

    sub-float v26, v14, v7

    div-float v26, v26, v9

    sub-float v27, v14, v20

    div-float v27, v27, v21

    sub-float/2addr v14, v1

    iget v15, v8, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->y:F

    div-float/2addr v14, v15

    div-float v28, v4, v5

    div-float v29, v7, v9

    div-float v30, v20, v21

    div-float/2addr v1, v15

    sub-float v14, v14, v25

    sub-float v29, v29, v28

    mul-float v14, v14, v29

    sub-float v1, v1, v28

    sub-float v26, v26, v25

    mul-float v15, v1, v26

    sub-float/2addr v14, v15

    sub-float v27, v27, v25

    mul-float v27, v27, v29

    sub-float v30, v30, v28

    mul-float v26, v26, v30

    sub-float v27, v27, v26

    div-float v14, v14, v27

    mul-float v30, v30, v14

    sub-float v1, v1, v30

    div-float v1, v1, v29

    sub-float v15, v3, v1

    sub-float/2addr v15, v14

    div-float v25, v15, v5

    div-float v26, v1, v9

    div-float v27, v14, v21

    mul-float v28, v25, v4

    sub-float v4, v3, v4

    sub-float/2addr v4, v5

    mul-float v4, v4, v25

    mul-float v5, v26, v7

    sub-float v7, v3, v7

    sub-float/2addr v7, v9

    mul-float v7, v7, v26

    mul-float v9, v27, v20

    sub-float v20, v3, v20

    sub-float v20, v20, v21

    mul-float v20, v20, v27

    new-array v2, v2, [F

    const/16 v21, 0x0

    aput v28, v2, v21

    const/16 v21, 0x1

    aput v15, v2, v21

    aput v4, v2, v16

    aput v5, v2, v17

    aput v1, v2, v18

    aput v7, v2, v19

    const/4 v1, 0x6

    aput v9, v2, v1

    const/4 v1, 0x7

    aput v14, v2, v1

    const/16 v1, 0x8

    aput v20, v2, v1

    iput-object v2, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    goto :goto_2

    :cond_3
    array-length v1, v9

    if-ne v1, v2, :cond_10

    iput-object v9, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    :goto_2
    iget-object v1, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    invoke-static {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->inverse3x3([F)[F

    move-result-object v1

    iput-object v1, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->inverseTransform:[F

    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->area([F)F

    move-result v1

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953Primaries:[F

    invoke-static {v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->area([F)F

    move-result v2

    div-float/2addr v1, v2

    const v2, 0x3f666666    # 0.9f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    const/4 v4, 0x0

    aget v5, v0, v4

    aget v7, v1, v4

    sub-float/2addr v5, v7

    const/4 v4, 0x1

    aget v9, v0, v4

    aget v14, v1, v4

    sub-float/2addr v9, v14

    aget v4, v0, v16

    aget v15, v1, v16

    sub-float/2addr v4, v15

    aget v15, v0, v17

    aget v20, v1, v17

    sub-float v15, v15, v20

    aget v20, v0, v18

    aget v21, v1, v18

    sub-float v20, v20, v21

    aget v23, v0, v19

    aget v24, v1, v19

    sub-float v23, v23, v24

    const/4 v3, 0x6

    new-array v2, v3, [F

    const/4 v3, 0x0

    aput v5, v2, v3

    const/4 v5, 0x1

    aput v9, v2, v5

    aput v4, v2, v16

    aput v15, v2, v17

    aput v20, v2, v18

    aput v23, v2, v19

    aget v4, v2, v3

    aget v9, v2, v5

    sub-float v7, v7, v21

    sub-float v14, v14, v24

    invoke-static {v4, v9, v7, v14}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->cross(FFFF)F

    move-result v4

    const/4 v7, 0x0

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_4

    aget v4, v1, v3

    aget v9, v1, v16

    sub-float/2addr v4, v9

    aget v9, v1, v5

    aget v14, v1, v17

    sub-float/2addr v9, v14

    aget v14, v2, v3

    aget v15, v2, v5

    invoke-static {v4, v9, v14, v15}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->cross(FFFF)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_5

    :cond_4
    move v5, v3

    goto :goto_3

    :cond_5
    aget v4, v2, v16

    aget v7, v2, v17

    aget v9, v1, v16

    aget v14, v1, v3

    sub-float/2addr v9, v14

    aget v3, v1, v17

    aget v14, v1, v5

    sub-float/2addr v3, v14

    invoke-static {v4, v7, v9, v3}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->cross(FFFF)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_8

    aget v3, v1, v16

    aget v5, v1, v18

    sub-float/2addr v3, v5

    aget v5, v1, v17

    aget v7, v1, v19

    sub-float/2addr v5, v7

    aget v7, v2, v16

    aget v9, v2, v17

    invoke-static {v3, v5, v7, v9}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->cross(FFFF)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    goto :goto_4

    :cond_6
    aget v3, v2, v18

    aget v4, v2, v19

    aget v5, v1, v18

    aget v7, v1, v16

    sub-float/2addr v5, v7

    aget v7, v1, v19

    aget v9, v1, v17

    sub-float/2addr v7, v9

    invoke-static {v3, v4, v5, v7}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->cross(FFFF)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_8

    aget v3, v1, v18

    const/4 v5, 0x0

    aget v7, v1, v5

    sub-float/2addr v3, v7

    aget v7, v1, v19

    const/4 v9, 0x1

    aget v1, v1, v9

    sub-float/2addr v7, v1

    aget v1, v2, v18

    aget v2, v2, v19

    invoke-static {v3, v7, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->cross(FFFF)F

    move-result v1

    cmpg-float v1, v1, v4

    if-ltz v1, :cond_7

    goto :goto_6

    :cond_7
    :goto_3
    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v5, 0x0

    goto :goto_3

    :goto_5
    cmpg-float v2, v12, v1

    :goto_6
    if-nez p10, :cond_9

    const/4 v2, 0x1

    goto/16 :goto_b

    :cond_9
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    if-ne v0, v1, :cond_b

    :cond_a
    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    move v2, v5

    const/4 v3, 0x6

    :goto_7
    if-ge v2, v3, :cond_a

    aget v4, v0, v2

    aget v7, v1, v2

    invoke-static {v4, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_d

    aget v4, v0, v2

    aget v7, v1, v2

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v7, 0x3a83126f    # 0.001f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_d

    :cond_c
    :goto_8
    move v2, v5

    goto :goto_b

    :cond_d
    const/4 v4, 0x1

    add-int/2addr v2, v4

    goto :goto_7

    :goto_9
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D65:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    invoke-static {v8, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->compare(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    cmpg-float v0, v12, v0

    if-nez v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v13, v0

    if-nez v0, :cond_c

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    const-wide/16 v1, 0x0

    :goto_a
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v1, v7

    if-gtz v3, :cond_f

    iget-object v3, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    invoke-interface {v10, v1, v2}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v7

    invoke-interface {v3, v1, v2}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v12

    sub-double/2addr v7, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v7, v12

    if-gtz v3, :cond_c

    iget-object v3, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v7

    invoke-interface {v3, v1, v2}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v14

    sub-double/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v3, v7, v12

    if-gtz v3, :cond_c

    const-wide v7, 0x3f70101010101010L    # 0.00392156862745098

    add-double/2addr v1, v7

    goto :goto_a

    :cond_f
    move v2, v4

    :goto_b
    iput-boolean v2, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->isSrgb:Z

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transform must have 9 entries! Has "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid range: min="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "; min must be strictly < max"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;[FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[F",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->Companion:Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->computePrimaries$ui_graphics_release([F)[F

    move-result-object v3

    move-object v1, p2

    invoke-static {v0, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->access$computeWhitePoint(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    new-instance v6, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda3;

    const/4 v0, 0x0

    move-object v1, p3

    invoke-direct {v6, p3, v0}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;I)V

    new-instance v7, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    move-object/from16 v1, p4

    invoke-direct {v7, v1, v0}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;I)V

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/compose/ui/graphics/colorspace/Rgb;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    iget v2, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    iget v3, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget v2, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    iget v3, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    iget-object v3, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    iget-object v3, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    iget-object v3, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    if-eqz v3, :cond_7

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    if-nez v2, :cond_8

    return v0

    :cond_8
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    iget-object v2, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    iget-object p1, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_a
    :goto_0
    return v1
.end method

.method public final fromXyz([F)[F
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->inverseTransform:[F

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)V

    const/4 v0, 0x0

    aget v1, p1, v0

    float-to-double v1, v1

    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    float-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p1, v0

    float-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    double-to-float p0, v1

    aput p0, p1, v0

    return-object p1
.end method

.method public final getMaxValue(I)F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    return p0
.end method

.method public final getMinValue(I)F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    return p0
.end method

.method public final hashCode()I
    .locals 5

    invoke-super {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    cmpg-float v2, v1, v2

    if-nez v2, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->hashCode()I

    move-result v4

    :cond_2
    add-int/2addr v0, v4

    if-nez v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int v0, p0, v1

    :cond_3
    return v0
.end method

.method public final isSrgb()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->isSrgb:Z

    return p0
.end method

.method public final toXy$ui_graphics_release(FFF)J
    .locals 3

    float-to-double v0, p1

    iget-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p2

    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    double-to-float p2, v1

    float-to-double v1, p3

    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    double-to-float p1, v1

    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    const/4 p3, 0x0

    aget p3, p0, p3

    mul-float/2addr p3, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, p3

    const/4 p3, 0x6

    aget p3, p0, p3

    mul-float/2addr p3, p1

    add-float/2addr p3, v1

    const/4 v1, 0x1

    aget v1, p0, v1

    mul-float/2addr v1, v0

    const/4 v0, 0x4

    aget v0, p0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    const/4 p2, 0x7

    aget p0, p0, p2

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long p0, p1, p0

    const-wide p2, 0xffffffffL

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public final toXyz([F)[F
    .locals 4

    const/4 v0, 0x0

    aget v1, p1, v0

    float-to-double v1, v1

    iget-object v3, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    float-to-double v1, v1

    invoke-virtual {v3, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p1, v0

    float-to-double v1, v1

    invoke-virtual {v3, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p1, v0

    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)V

    return-object p1
.end method

.method public final toZ$ui_graphics_release(FFF)F
    .locals 3

    float-to-double v0, p1

    iget-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p2

    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    double-to-float p2, v1

    float-to-double v1, p3

    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    double-to-float p1, v1

    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    const/4 p3, 0x2

    aget p3, p0, p3

    mul-float/2addr p3, v0

    const/4 v0, 0x5

    aget v0, p0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p3

    const/16 p2, 0x8

    aget p0, p0, p2

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    return p0
.end method

.method public final xyzaToColor-JlNiLsg$ui_graphics_release(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->inverseTransform:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    mul-float/2addr v1, p1

    const/4 v2, 0x3

    aget v2, v0, v2

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    const/4 v1, 0x6

    aget v1, v0, v1

    mul-float/2addr v1, p3

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aget v2, v0, v2

    mul-float/2addr v2, p1

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v3, p2

    add-float/2addr v3, v2

    const/4 v2, 0x7

    aget v2, v0, v2

    mul-float/2addr v2, p3

    add-float/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 p1, 0x5

    aget p1, v0, p1

    mul-float/2addr p1, p2

    add-float/2addr p1, v3

    const/16 p2, 0x8

    aget p2, v0, p2

    mul-float/2addr p2, p3

    add-float/2addr p2, p1

    float-to-double v0, v1

    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-double v0, v2

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v0

    double-to-float p3, v0

    float-to-double v0, p2

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p1, p3, p0, p4, p5}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method
