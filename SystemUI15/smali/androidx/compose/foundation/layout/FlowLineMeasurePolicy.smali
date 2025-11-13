.class public interface abstract Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;


# virtual methods
.method public createConstraints-xF2OJ5Q(IIIIZ)J
    .locals 0

    check-cast p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->isHorizontal:Z

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/compose/foundation/layout/RowKt;->DefaultRowMeasurePolicy:Landroidx/compose/foundation/layout/RowMeasurePolicy;

    if-nez p5, :cond_0

    invoke-static {p1, p3, p2, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p3, p2, p4}, Landroidx/compose/ui/unit/Constraints$Companion;->fitPrioritizingWidth-Zbe2FdA(IIII)J

    move-result-wide p0

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/foundation/layout/ColumnKt;->createColumnConstraints(IIIIZ)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 0

    check-cast p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->isHorizontal:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 0

    check-cast p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->isHorizontal:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public placeHelper([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;[III[IIII)Landroidx/compose/ui/layout/MeasureResult;
    .locals 14

    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    iget-boolean v0, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->isHorizontal:Z

    if-eqz v0, :cond_0

    move/from16 v11, p4

    move/from16 v12, p5

    goto :goto_0

    :cond_0
    move/from16 v12, p4

    move/from16 v11, p5

    :goto_0
    new-instance v13, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy$placeHelper$1$1;

    const/4 v9, 0x0

    move-object v0, v13

    move-object/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move-object v5, p1

    move-object v6, p0

    move/from16 v7, p5

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy$placeHelper$1$1;-><init>([IIII[Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;ILandroidx/compose/ui/layout/MeasureScope;I[I)V

    move-object/from16 v0, p2

    invoke-static {v0, v11, v12, v13}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public populateMainAxisPositions(I[I[ILandroidx/compose/ui/layout/MeasureScope;)V
    .locals 7

    check-cast p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->isHorizontal:Z

    if-eqz v0, :cond_0

    invoke-interface {p4}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-object v2, p4

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    invoke-interface {p0, p4, p1, p2, p3}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    :goto_0
    return-void
.end method
