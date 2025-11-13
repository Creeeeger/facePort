.class public final Lcom/android/compose/animation/scene/transformation/AnchoredTranslate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/transformation/PropertyTransformation;


# instance fields
.field public final anchor:Lcom/android/compose/animation/scene/ElementKey;

.field public final matcher:Lcom/android/compose/animation/scene/ElementMatcher;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;Lcom/android/compose/animation/scene/ElementKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/transformation/AnchoredTranslate;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    iput-object p2, p0, Lcom/android/compose/animation/scene/transformation/AnchoredTranslate;->anchor:Lcom/android/compose/animation/scene/ElementKey;

    return-void
.end method


# virtual methods
.method public final getMatcher()Lcom/android/compose/animation/scene/ElementMatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transformation/AnchoredTranslate;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    return-object p0
.end method

.method public final transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p6, Landroidx/compose/ui/geometry/Offset;

    iget-wide p3, p6, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-object p1, p1, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->elements:Ljava/util/Map;

    check-cast p1, Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lcom/android/compose/animation/scene/transformation/AnchoredTranslate;->anchor:Lcom/android/compose/animation/scene/ElementKey;

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/compose/animation/scene/Element;

    const/4 p6, 0x0

    const-string v0, "AnchoredTranslate"

    if-eqz p1, :cond_5

    iget-object v1, p5, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    iget-object p1, p1, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/compose/animation/scene/Element$SceneState;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/compose/animation/scene/Element$SceneState;->getTargetOffset-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    iget-wide v3, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p6

    :goto_0
    if-eqz v2, :cond_4

    iget-object p5, p5, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p1, p5}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/compose/animation/scene/Element$SceneState;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/compose/animation/scene/Element$SceneState;->getTargetOffset-F1C5BW0()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p1

    iget-wide v3, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p6

    :goto_1
    if-eqz p1, :cond_3

    iget-wide p0, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-wide v0, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p0

    invoke-virtual {p2, p5}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p2

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p5

    sub-float/2addr p2, p5

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p3

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    sub-float/2addr p3, p0

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    goto :goto_2

    :cond_2
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p2

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p5

    add-float/2addr p5, p2

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p2

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    add-float/2addr p0, p2

    invoke-static {p5, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    :goto_2
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v0, p0, p5}, Lcom/android/compose/animation/scene/transformation/AnchoredTranslateKt;->throwMissingAnchorException(Ljava/lang/String;Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)V

    throw p6

    :cond_4
    invoke-static {v0, p0, v1}, Lcom/android/compose/animation/scene/transformation/AnchoredTranslateKt;->throwMissingAnchorException(Ljava/lang/String;Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)V

    throw p6

    :cond_5
    invoke-static {v0, p0, p6}, Lcom/android/compose/animation/scene/transformation/AnchoredTranslateKt;->throwMissingAnchorException(Ljava/lang/String;Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)V

    throw p6
.end method
