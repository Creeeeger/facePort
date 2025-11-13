.class public final Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/layout/ApproachMeasureScope;
.implements Landroidx/compose/ui/layout/MeasureScope;
.implements Landroidx/compose/ui/layout/LookaheadScope;


# instance fields
.field public approachMeasureRequired:Z

.field public approachNode:Landroidx/compose/ui/layout/ApproachLayoutModifierNode;

.field public final coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;Landroidx/compose/ui/layout/ApproachLayoutModifierNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    iput-object p2, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->approachNode:Landroidx/compose/ui/layout/ApproachLayoutModifierNode;

    return-void
.end method


# virtual methods
.method public final getDensity()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getDensity()F

    move-result p0

    return p0
.end method

.method public final getFontScale()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getFontScale()F

    move-result p0

    return p0
.end method

.method public final getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object p0
.end method

.method public final getLookaheadScopeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtualLookaheadRoot:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error: Requesting LookaheadScopeCoordinates is not permitted from outside of a LookaheadScope."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLookaheadSize-YbymL2g()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadDelegate;->getMeasureResult$ui_release()Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final isLookingAhead()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    if-nez v1, :cond_0

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;

    const/4 v5, 0x0

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;-><init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Size("

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " x "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of range. Each dimension must be between 0 and 16777215."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final roundToPx-0680j_4(F)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    return p0
.end method

.method public final toDp-GaN1DYA(J)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toDp-GaN1DYA(J)F

    move-result p0

    return p0
.end method

.method public final toDp-u2uoSUM(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result p0

    return p0
.end method

.method public final toDp-u2uoSUM(I)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p0

    return p0
.end method

.method public final toDpSize-k-rfVVM(J)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toDpSize-k-rfVVM(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final toLookaheadCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2

    instance-of p0, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    instance-of p0, p1, Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_2

    move-object p0, p1

    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadDelegate;->lookaheadLayoutCoordinates:Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    if-eqz p0, :cond_1

    move-object p1, p0

    :cond_1
    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported LayoutCoordinates: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toPx--R2X_6o(J)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result p0

    return p0
.end method

.method public final toPx-0680j_4(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getDensity()F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method

.method public final toSize-XkaWNTQ(J)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toSize-XkaWNTQ(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final toSp-0xMU5do(F)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toSp-0xMU5do(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final toSp-kPz2Gy4(F)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->coordinator:Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toSp-kPz2Gy4(F)J

    move-result-wide p0

    return-wide p0
.end method
