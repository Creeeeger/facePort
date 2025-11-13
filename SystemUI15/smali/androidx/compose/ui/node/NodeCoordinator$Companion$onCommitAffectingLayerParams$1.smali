.class final Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;->INSTANCE:Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->isValidOwnerScope()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Landroidx/compose/ui/node/NodeCoordinator;->layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters(Z)V

    goto/16 :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/ui/node/NodeCoordinator;->tmpLayerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    iput v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    iget v2, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    iput v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    iget v2, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->translationX:F

    iput v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->translationX:F

    iget v2, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->translationY:F

    iput v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->translationY:F

    iget v2, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationX:F

    iput v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationX:F

    iget v2, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationY:F

    iput v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationY:F

    iget v2, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationZ:F

    iput v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationZ:F

    iget v2, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    iput v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    iget-wide v2, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    iput-wide v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters(Z)V

    iget v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    iget v3, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    iget v3, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->translationX:F

    iget v3, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->translationX:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->translationY:F

    iget v3, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->translationY:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationX:F

    iget v3, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationX:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationY:F

    iget v3, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationY:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationZ:F

    iget v3, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationZ:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    iget v3, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_1

    iget-wide v1, v1, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    iget-wide v3, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    sget-object p0, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p1, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget v1, p1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->childrenAccessingCoordinatesDuringPlacement:I

    if-lez v1, :cond_4

    iget-boolean v1, p1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->coordinatesAccessedDuringModifierPlacement:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->coordinatesAccessedDuringPlacement:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    :cond_3
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->notifyChildrenUsingCoordinatesWhilePlacing()V

    :cond_4
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz p1, :cond_5

    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v1, p1, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    iget-object v1, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/compose/ui/node/OnPositionedDispatcher;

    iget-object v1, v1, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->needsOnPositionedDispatch:Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->scheduleMeasureAndLayout(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_5
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
