.class public final Landroidx/compose/foundation/layout/BoxMeasurePolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final alignment:Landroidx/compose/ui/Alignment;

.field public final propagateMinConstraints:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    iget-object v1, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    iget-object v3, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16

    move-object/from16 v7, p1

    move-object/from16 v2, p2

    const/4 v0, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v1

    sget-object v2, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$1;->INSTANCE:Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$1;

    invoke-static {v7, v0, v1, v2}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v6, p0

    iget-boolean v1, v6, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    if-eqz v1, :cond_1

    move-wide/from16 v3, p3

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v14, 0xa

    move-wide/from16 v8, p3

    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    move-result-wide v3

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x0

    if-ne v1, v0, :cond_5

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    sget-object v0, Landroidx/compose/foundation/layout/BoxKt;->cache1:Ljava/util/HashMap;

    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/foundation/layout/BoxChildDataNode;

    if-eqz v1, :cond_2

    move-object v5, v0

    check-cast v5, Landroidx/compose/foundation/layout/BoxChildDataNode;

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    iget-boolean v8, v5, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    :cond_3
    if-nez v8, :cond_4

    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    iget v3, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    iget v4, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_2
    move v8, v1

    move v9, v3

    move-object v1, v0

    goto :goto_3

    :cond_4
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    sget-object v0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v4

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    goto :goto_2

    :goto_3
    new-instance v10, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$2;

    move-object v0, v10

    move-object/from16 v3, p1

    move v4, v8

    move v5, v9

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$2;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/foundation/layout/BoxMeasurePolicy;)V

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/compose/ui/layout/Placeable;

    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v10

    iput v10, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v11

    iput v11, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    move v12, v8

    move v13, v12

    :goto_4
    if-ge v12, v11, :cond_9

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    sget-object v15, Landroidx/compose/foundation/layout/BoxKt;->cache1:Ljava/util/HashMap;

    invoke-interface {v14}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    move-result-object v15

    instance-of v5, v15, Landroidx/compose/foundation/layout/BoxChildDataNode;

    if-eqz v5, :cond_6

    check-cast v15, Landroidx/compose/foundation/layout/BoxChildDataNode;

    goto :goto_5

    :cond_6
    const/4 v15, 0x0

    :goto_5
    if-eqz v15, :cond_7

    iget-boolean v5, v15, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    goto :goto_6

    :cond_7
    move v5, v8

    :goto_6
    if-nez v5, :cond_8

    invoke-interface {v14, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    aput-object v5, v1, v12

    iget v14, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v15, v5, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v14, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v5, v5, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_7

    :cond_8
    move v13, v0

    :goto_7
    add-int/2addr v12, v0

    goto :goto_4

    :cond_9
    if-eqz v13, :cond_f

    iget v3, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_a

    move v5, v3

    goto :goto_8

    :cond_a
    move v5, v8

    :goto_8
    iget v11, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v11, v4, :cond_b

    move v4, v11

    goto :goto_9

    :cond_b
    move v4, v8

    :goto_9
    invoke-static {v5, v3, v4, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    move v11, v8

    :goto_a
    if-ge v11, v5, :cond_f

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    sget-object v13, Landroidx/compose/foundation/layout/BoxKt;->cache1:Ljava/util/HashMap;

    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Landroidx/compose/foundation/layout/BoxChildDataNode;

    if-eqz v14, :cond_c

    check-cast v13, Landroidx/compose/foundation/layout/BoxChildDataNode;

    goto :goto_b

    :cond_c
    const/4 v13, 0x0

    :goto_b
    if-eqz v13, :cond_d

    iget-boolean v13, v13, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    goto :goto_c

    :cond_d
    move v13, v8

    :goto_c
    if-eqz v13, :cond_e

    invoke-interface {v12, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v12

    aput-object v12, v1, v11

    :cond_e
    add-int/2addr v11, v0

    goto :goto_a

    :cond_f
    iget v8, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v11, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v12, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$5;

    move-object v0, v12

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v9

    move-object v5, v10

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$5;-><init>([Landroidx/compose/ui/layout/Placeable;Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/foundation/layout/BoxMeasurePolicy;)V

    invoke-static {v7, v8, v11, v12}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BoxMeasurePolicy(alignment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", propagateMinConstraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/ChangeSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
