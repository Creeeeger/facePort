.class final Landroidx/compose/foundation/gestures/ScrollableElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field public final enabled:Z

.field public final flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public final overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

.field public final reverseDirection:Z

.field public final state:Landroidx/compose/foundation/gestures/ScrollableState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iput-boolean p4, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->enabled:Z

    iput-boolean p5, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->reverseDirection:Z

    iput-object p6, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-object p7, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p8, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 10

    new-instance v9, Landroidx/compose/foundation/gestures/ScrollableNode;

    iget-boolean v5, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->enabled:Z

    iget-boolean v6, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->reverseDirection:Z

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v7, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v8, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/ScrollableNode;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V

    return-object v9
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/gestures/ScrollableElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollableElement;

    iget-object v1, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->enabled:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->enabled:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->reverseDirection:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->reverseDirection:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iget-object p1, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-boolean v3, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->enabled:Z

    invoke-static {v2, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v2

    iget-boolean v3, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->reverseDirection:Z

    invoke-static {v2, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v2

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_3
    add-int/2addr v2, v0

    return v2
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 11

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollableNode;

    iget-boolean v0, p1, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->enabled:Z

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    iget-object v0, p1, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollConnection:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    iput-boolean v2, v0, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;->enabled:Z

    iget-object v0, p1, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollableContainerNode:Landroidx/compose/foundation/gestures/ScrollableContainerNode;

    iput-boolean v2, v0, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->enabled:Z

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    if-nez v0, :cond_1

    iget-object v4, p1, Landroidx/compose/foundation/gestures/ScrollableNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    iget-object v5, p1, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v7, v5, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-object v8, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iput-object v8, v5, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    move v3, v1

    :cond_2
    iget-object v7, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iput-object v7, v5, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iget-object v8, v5, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v9, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v8, v9, :cond_3

    iput-object v9, v5, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    move v3, v1

    :cond_3
    iget-boolean v8, v5, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    iget-boolean v10, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->reverseDirection:Z

    if-eq v8, v10, :cond_4

    iput-boolean v10, v5, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    move v8, v1

    goto :goto_2

    :cond_4
    move v8, v3

    :goto_2
    iput-object v4, v5, Landroidx/compose/foundation/gestures/ScrollingLogic;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v1, p1, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iput-object v1, v5, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iget-object v1, p1, Landroidx/compose/foundation/gestures/ScrollableNode;->contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

    iput-object v9, v1, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean v10, v1, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iput-object v3, v1, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iput-object v7, p1, Landroidx/compose/foundation/gestures/ScrollableNode;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iput-object v0, p1, Landroidx/compose/foundation/gestures/ScrollableNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    sget-object v1, Landroidx/compose/foundation/gestures/ScrollableKt;->CanDragCalculation:Lkotlin/jvm/functions/Function1;

    iget-object v0, v5, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v3, :cond_5

    move-object v4, v3

    goto :goto_3

    :cond_5
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    move-object v4, v0

    :goto_3
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v0, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureNode;->update(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;Z)V

    if-eqz v6, :cond_6

    const/4 p0, 0x0

    iput-object p0, p1, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByAction:Lkotlin/jvm/functions/Function2;

    iput-object p0, p1, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByOffsetAction:Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_6
    return-void
.end method
