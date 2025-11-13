.class public abstract Landroidx/compose/foundation/text/TextFieldScrollKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$getCursorRectInScroller(Landroidx/compose/ui/unit/Density;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    if-eqz p3, :cond_0

    iget-object p2, p2, Landroidx/compose/ui/text/input/TransformedText;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {p2, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    :goto_0
    sget p2, Landroidx/compose/foundation/text/TextFieldCursorKt;->DefaultCursorThickness:F

    invoke-interface {p0, p2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    if-eqz p4, :cond_1

    int-to-float p2, p5

    iget p3, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    sub-float/2addr p2, p3

    int-to-float p3, p0

    sub-float/2addr p2, p3

    goto :goto_1

    :cond_1
    iget p2, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    :goto_1
    if-eqz p4, :cond_2

    int-to-float p0, p5

    iget p3, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    sub-float/2addr p0, p3

    goto :goto_2

    :cond_2
    iget p3, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    int-to-float p0, p0

    add-float/2addr p0, p3

    :goto_2
    iget p3, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    new-instance p4, Landroidx/compose/ui/geometry/Rect;

    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-direct {p4, p2, p3, p0, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object p4
.end method
