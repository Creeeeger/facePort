.class public final Lcom/android/compose/grid/GridsKt$Grid$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final synthetic $horizontalSpacing:F

.field public final synthetic $isVertical:Z

.field public final synthetic $primarySpaces:I

.field public final synthetic $sizeCache:Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;

.field public final synthetic $verticalSpacing:F


# direct methods
.method public constructor <init>(ZILcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;FF)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/compose/grid/GridsKt$Grid$2;->$isVertical:Z

    iput p2, p0, Lcom/android/compose/grid/GridsKt$Grid$2;->$primarySpaces:I

    iput-object p3, p0, Lcom/android/compose/grid/GridsKt$Grid$2;->$sizeCache:Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;

    iput p4, p0, Lcom/android/compose/grid/GridsKt$Grid$2;->$horizontalSpacing:F

    iput p5, p0, Lcom/android/compose/grid/GridsKt$Grid$2;->$verticalSpacing:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    iget v1, v0, Lcom/android/compose/grid/GridsKt$Grid$2;->$primarySpaces:I

    iget-boolean v2, v0, Lcom/android/compose/grid/GridsKt$Grid$2;->$isVertical:Z

    if-eqz v2, :cond_0

    int-to-float v3, v5

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-int v3, v3

    move/from16 v20, v3

    move v3, v1

    move/from16 v1, v20

    goto :goto_0

    :cond_0
    int-to-float v3, v5

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-int v3, v3

    :goto_0
    iget-object v4, v0, Lcom/android/compose/grid/GridsKt$Grid$2;->$sizeCache:Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;

    iget-object v6, v4, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;->rowHeights:[I

    array-length v6, v6

    const/4 v7, 0x0

    if-eq v6, v1, :cond_2

    new-array v6, v1, [I

    move v9, v7

    :goto_1
    if-ge v9, v1, :cond_1

    aput v7, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    iput-object v6, v4, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;->rowHeights:[I

    goto :goto_3

    :cond_2
    move v6, v7

    :goto_2
    if-ge v6, v1, :cond_3

    iget-object v9, v4, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;->rowHeights:[I

    aput v7, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v6, v4, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;->columnWidths:[I

    array-length v6, v6

    if-eq v6, v3, :cond_5

    new-array v6, v3, [I

    move v9, v7

    :goto_4
    if-ge v9, v3, :cond_4

    aput v7, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    iput-object v6, v4, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;->columnWidths:[I

    goto :goto_6

    :cond_5
    move v6, v7

    :goto_5
    if-ge v6, v3, :cond_6

    iget-object v9, v4, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;->columnWidths:[I

    aput v7, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    iget v9, v0, Lcom/android/compose/grid/GridsKt$Grid$2;->$horizontalSpacing:F

    invoke-interface {v8, v9}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v9

    mul-float/2addr v9, v6

    invoke-static {v9}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v6

    add-int/lit8 v9, v1, -0x1

    int-to-float v9, v9

    iget v10, v0, Lcom/android/compose/grid/GridsKt$Grid$2;->$verticalSpacing:F

    invoke-interface {v8, v10}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v10

    mul-float/2addr v10, v9

    invoke-static {v10}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v9

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v10

    const v11, 0x7fffffff

    if-eq v10, v11, :cond_7

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v10

    sub-int/2addr v10, v6

    div-int/2addr v10, v3

    goto :goto_7

    :cond_7
    move v10, v11

    :goto_7
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v12

    if-eq v12, v11, :cond_8

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v11

    sub-int/2addr v11, v9

    div-int/2addr v11, v1

    :cond_8
    const/4 v12, 0x5

    invoke-static {v10, v11, v12}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    move-result-wide v10

    new-instance v12, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v12}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    move v14, v7

    :goto_8
    if-ge v14, v13, :cond_a

    if-eqz v2, :cond_9

    rem-int v15, v14, v3

    div-int v16, v14, v3

    :goto_9
    move-object/from16 v7, p2

    goto :goto_a

    :cond_9
    div-int v15, v14, v1

    rem-int v16, v14, v1

    goto :goto_9

    :goto_a
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v2

    move-object/from16 v2, v17

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v2, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    move/from16 v17, v6

    iget-object v6, v4, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;->rowHeights:[I

    aget v7, v6, v16

    move/from16 v19, v9

    iget v9, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v6, v16

    iget-object v6, v4, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;->columnWidths:[I

    aget v7, v6, v15

    iget v9, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v6, v15

    invoke-virtual {v12, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v17

    move/from16 v2, v18

    move/from16 v9, v19

    const/4 v7, 0x0

    goto :goto_8

    :cond_a
    move/from16 v17, v6

    move/from16 v19, v9

    invoke-virtual {v12}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object v6

    iget-object v2, v4, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;->columnWidths:[I

    array-length v2, v2

    move/from16 v9, v17

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v2, :cond_b

    iget-object v10, v4, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;->columnWidths:[I

    aget v10, v10, v7

    add-int/2addr v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_b
    iget-object v2, v4, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;->rowHeights:[I

    array-length v2, v2

    move/from16 v10, v19

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v2, :cond_c

    iget-object v11, v4, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;->rowHeights:[I

    aget v11, v11, v7

    add-int/2addr v10, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_c
    new-instance v11, Lcom/android/compose/grid/GridsKt$Grid$2$5;

    iget v4, v0, Lcom/android/compose/grid/GridsKt$Grid$2;->$verticalSpacing:F

    iget v7, v0, Lcom/android/compose/grid/GridsKt$Grid$2;->$horizontalSpacing:F

    move-object v0, v11

    move v2, v3

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/compose/grid/GridsKt$Grid$2$5;-><init>(IILandroidx/compose/ui/layout/MeasureScope;FILjava/util/List;F)V

    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
