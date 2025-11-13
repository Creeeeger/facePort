.class public final Landroidx/compose/material3/MinimumInteractiveModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 3

    sget-object v0, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    iget v0, v0, Landroidx/compose/ui/unit/Dp;->value:F

    const/4 v1, 0x0

    int-to-float v2, v1

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    const/4 p3, 0x1

    if-eqz p0, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    xor-int/2addr p0, p3

    if-eqz p0, :cond_0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-lez p0, :cond_0

    move p0, p3

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

    xor-int/2addr p3, p4

    if-eqz p3, :cond_1

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v1

    :cond_1
    if-eqz p0, :cond_2

    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_1

    :cond_2
    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    :goto_1
    if-eqz p0, :cond_3

    iget p0, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_2

    :cond_3
    iget p0, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    :goto_2
    new-instance p4, Landroidx/compose/material3/MinimumInteractiveModifierNode$measure$1;

    invoke-direct {p4, p3, p0, p2}, Landroidx/compose/material3/MinimumInteractiveModifierNode$measure$1;-><init>(IILandroidx/compose/ui/layout/Placeable;)V

    invoke-static {p1, p3, p0, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
