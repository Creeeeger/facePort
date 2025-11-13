.class public final Landroidx/compose/ui/layout/OnSizeChangedNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;


# instance fields
.field public onSizeChanged:Lkotlin/jvm/functions/Function1;

.field public previousSize:J


# virtual methods
.method public final getShouldAutoInvalidate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onRemeasured-ozmzZPI(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->previousSize:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    new-instance v1, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide p1, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->previousSize:J

    :cond_0
    return-void
.end method
