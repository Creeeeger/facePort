.class final Lcom/android/compose/animation/scene/ElementNode$measure$1$1;
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


# instance fields
.field final synthetic $this_run:Landroidx/compose/ui/layout/Placeable;

.field final synthetic this$0:Lcom/android/compose/animation/scene/ElementNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/Placeable;Lcom/android/compose/animation/scene/ElementNode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/scene/ElementNode$measure$1$1;->$this_run:Landroidx/compose/ui/layout/Placeable;

    iput-object p2, p0, Lcom/android/compose/animation/scene/ElementNode$measure$1$1;->this$0:Lcom/android/compose/animation/scene/ElementNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/compose/animation/scene/ElementNode$measure$1$1;->this$0:Lcom/android/compose/animation/scene/ElementNode;

    iget-object v3, v2, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v3, v3, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, v2, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Landroidx/compose/ui/layout/LookaheadScope;->getLookaheadScopeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/layout/LookaheadScopeKt;->defaultPlacementApproachInProgress:Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v4}, Landroidx/compose/ui/layout/LookaheadScope;->toLookaheadCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v4

    invoke-interface {v3, v0}, Landroidx/compose/ui/layout/LookaheadScope;->toLookaheadCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    instance-of v3, v4, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_1

    check-cast v4, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    invoke-virtual {v4, v0, v5, v6, v1}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->localPositionOf-S_NoaFU$ui_release(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide v3

    goto :goto_1

    :cond_1
    instance-of v3, v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    if-eqz v3, :cond_2

    check-cast v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    invoke-virtual {v0, v4, v5, v6, v1}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->localPositionOf-S_NoaFU$ui_release(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide v3

    const-wide v5, -0x7fffffff80000000L    # -1.0609978955E-314

    xor-long/2addr v3, v5

    goto :goto_1

    :cond_2
    invoke-interface {v4, v4, v5, v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v3

    :goto_1
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    iget-object v2, v2, Lcom/android/compose/animation/scene/Element$SceneState;->targetOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lcom/android/compose/animation/scene/ElementNode$measure$1$1;->$this_run:Landroidx/compose/ui/layout/Placeable;

    invoke-static {p1, p0, v1, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
