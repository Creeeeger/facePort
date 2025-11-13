.class public final Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field public minHeight:F

.field public minWidth:F


# virtual methods
.method public final maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/Measurable;I)I
    .locals 1

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    move-result p2

    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minHeight:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {p3, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p3

    if-nez p3, :cond_0

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minHeight:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ge p2, p0, :cond_1

    move p2, p0

    :cond_1
    return p2
.end method

.method public final maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/Measurable;I)I
    .locals 1

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result p2

    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minWidth:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {p3, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p3

    if-nez p3, :cond_0

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minWidth:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ge p2, p0, :cond_1

    move p2, p0

    :cond_1
    return p2
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 5

    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minWidth:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minWidth:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    if-le v0, v3, :cond_0

    move v0, v3

    :cond_0
    if-gez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    :cond_2
    :goto_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    iget v4, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minHeight:F

    invoke-static {v4, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v1

    if-nez v1, :cond_5

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minHeight:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    if-le p0, v1, :cond_3

    move p0, v1

    :cond_3
    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    move v2, p0

    goto :goto_1

    :cond_5
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    :goto_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    invoke-static {v0, v3, v2, p0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    new-instance p4, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode$measure$1;

    invoke-direct {p4, p0}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/Measurable;I)I
    .locals 1

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    move-result p2

    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minHeight:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {p3, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p3

    if-nez p3, :cond_0

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minHeight:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ge p2, p0, :cond_1

    move p2, p0

    :cond_1
    return p2
.end method

.method public final minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/Measurable;I)I
    .locals 1

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    move-result p2

    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minWidth:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {p3, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p3

    if-nez p3, :cond_0

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minWidth:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ge p2, p0, :cond_1

    move p2, p0

    :cond_1
    return p2
.end method
