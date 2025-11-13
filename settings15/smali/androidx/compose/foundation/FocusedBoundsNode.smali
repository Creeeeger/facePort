.class public final Landroidx/compose/foundation/FocusedBoundsNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/node/TraversableNode;
.implements Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;


# static fields
.field public static final TraverseKey:Landroidx/compose/foundation/FocusedBoundsNode$TraverseKey;


# instance fields
.field public isFocused:Z

.field public layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/FocusedBoundsNode$TraverseKey;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/foundation/FocusedBoundsNode;->TraverseKey:Landroidx/compose/foundation/FocusedBoundsNode$TraverseKey;

    return-void
.end method


# virtual methods
.method public final getObserver()Landroidx/compose/foundation/FocusedBoundsObserverNode;
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/FocusedBoundsObserverNode;->TraverseKey:Landroidx/compose/foundation/FocusedBoundsObserverNode$TraverseKey;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/TraversableNodeKt;->findNearestAncestor(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;)Landroidx/compose/ui/node/TraversableNode;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/foundation/FocusedBoundsObserverNode;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroidx/compose/foundation/FocusedBoundsObserverNode;

    :cond_0
    return-object v1
.end method

.method public final getShouldAutoInvalidate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getTraverseKey()Ljava/lang/Object;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/FocusedBoundsNode;->TraverseKey:Landroidx/compose/foundation/FocusedBoundsNode$TraverseKey;

    return-object p0
.end method

.method public final onGloballyPositioned(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/FocusedBoundsNode;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    iget-boolean v0, p0, Landroidx/compose/foundation/FocusedBoundsNode;->isFocused:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/compose/foundation/FocusedBoundsNode;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/FocusedBoundsNode;->getObserver()Landroidx/compose/foundation/FocusedBoundsObserverNode;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/FocusedBoundsNode;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/FocusedBoundsObserverNode;->onFocusBoundsChanged(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusedBoundsNode;->getObserver()Landroidx/compose/foundation/FocusedBoundsObserverNode;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusedBoundsObserverNode;->onFocusBoundsChanged(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    :cond_2
    :goto_0
    return-void
.end method
