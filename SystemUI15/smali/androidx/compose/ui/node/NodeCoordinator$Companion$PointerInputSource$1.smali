.class public final Landroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childHitTest-YqVAtuI(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 0

    invoke-virtual/range {p1 .. p6}, Landroidx/compose/ui/node/LayoutNode;->hitTest-M_7yMNQ$ui_release(JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    return-void
.end method

.method public final entityType-OLwlOKw()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public final interceptOutOfBoundsChildEvents(Landroidx/compose/ui/Modifier$Node;)Z
    .locals 7

    const/4 p0, 0x0

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v2, p1, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v2, :cond_0

    check-cast p1, Landroidx/compose/ui/node/PointerInputModifierNode;

    invoke-interface {p1}, Landroidx/compose/ui/node/PointerInputModifierNode;->interceptOutOfBoundsChildEvents()V

    goto :goto_3

    :cond_0
    iget v2, p1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    instance-of v2, p1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_6

    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v2, v2, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v4, v1

    :goto_1
    const/4 v5, 0x1

    if-eqz v2, :cond_5

    iget v6, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    move-object p1, v2

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    new-array v5, v3, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v0, v5, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object p1, p0

    :cond_3
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_5
    if-ne v4, v5, :cond_6

    goto :goto_0

    :cond_6
    :goto_3
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    goto :goto_0

    :cond_7
    return v1
.end method

.method public final shouldHitTestChildren(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
