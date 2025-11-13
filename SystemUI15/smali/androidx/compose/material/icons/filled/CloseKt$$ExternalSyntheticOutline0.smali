.class public abstract synthetic Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v0, p2, p3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    return-object v0
.end method

.method public static m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {p0, p3, p4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    return-void
.end method
