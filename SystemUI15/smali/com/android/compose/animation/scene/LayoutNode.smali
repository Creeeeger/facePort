.class public final Lcom/android/compose/animation/scene/LayoutNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/layout/ApproachLayoutModifierNode;


# instance fields
.field public layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/LayoutNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    return-void
.end method


# virtual methods
.method public final approachMeasure-3p2s80s(Landroidx/compose/ui/layout/ApproachMeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    iget-object p3, p0, Lcom/android/compose/animation/scene/LayoutNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p3, p3, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-interface {p3}, Lcom/android/compose/animation/scene/SceneTransitionLayoutState;->getCurrentTransition()Lcom/android/compose/animation/scene/TransitionState$Transition;

    move-result-object p3

    if-nez p3, :cond_0

    iget p0, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lcom/android/compose/animation/scene/LayoutNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v0, p3, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p4, v0}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Scene;

    move-result-object p4

    iget-object p4, p4, Lcom/android/compose/animation/scene/Scene;->targetSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/ui/unit/IntSize;

    iget-wide v0, p4, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    iget-object p0, p0, Lcom/android/compose/animation/scene/LayoutNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p4, p3, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p0, p4}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Scene;

    move-result-object p0

    iget-object p0, p0, Lcom/android/compose/animation/scene/Scene;->targetSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    iget-wide v2, p0, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result p0

    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    if-eqz p0, :cond_1

    shr-long p3, v0, v6

    long-to-int p0, p3

    and-long p3, v0, v4

    long-to-int p3, p3

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getCurrentOverscrollSpec$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p3}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->scene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/compose/ui/util/MathHelpersKt;->lerp-e0twbBA(JJF)J

    move-result-wide p3

    shr-long v0, p3, v6

    long-to-int p0, v0

    const/4 v0, 0x0

    if-gez p0, :cond_4

    move p0, v0

    :cond_4
    and-long/2addr p3, v4

    long-to-int p3, p3

    if-gez p3, :cond_5

    move p3, v0

    :cond_5
    :goto_1
    new-instance p4, Lcom/android/compose/animation/scene/LayoutNode$approachMeasure$1;

    invoke-direct {p4, p2}, Lcom/android/compose/animation/scene/LayoutNode$approachMeasure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    invoke-static {p1, p0, p3, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final isMeasurementApproachInProgress-ozmzZPI(J)Z
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/LayoutNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/android/compose/animation/scene/SceneTransitionLayoutState;->isTransitioning$default(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneKey;I)Z

    move-result p0

    return p0
.end method
