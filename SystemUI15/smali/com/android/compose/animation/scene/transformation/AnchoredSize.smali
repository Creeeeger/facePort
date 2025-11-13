.class public final Lcom/android/compose/animation/scene/transformation/AnchoredSize;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/transformation/PropertyTransformation;


# instance fields
.field public final anchor:Lcom/android/compose/animation/scene/ElementKey;

.field public final anchorHeight:Z

.field public final anchorWidth:Z

.field public final matcher:Lcom/android/compose/animation/scene/ElementMatcher;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;Lcom/android/compose/animation/scene/ElementKey;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/transformation/AnchoredSize;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    iput-object p2, p0, Lcom/android/compose/animation/scene/transformation/AnchoredSize;->anchor:Lcom/android/compose/animation/scene/ElementKey;

    iput-boolean p3, p0, Lcom/android/compose/animation/scene/transformation/AnchoredSize;->anchorWidth:Z

    iput-boolean p4, p0, Lcom/android/compose/animation/scene/transformation/AnchoredSize;->anchorHeight:Z

    return-void
.end method

.method public static final transform_xOqHW7M$anchorSizeIn(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/transformation/AnchoredSize;JLcom/android/compose/animation/scene/SceneKey;)J
    .locals 5

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->elements:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/compose/animation/scene/transformation/AnchoredSize;->anchor:Lcom/android/compose/animation/scene/ElementKey;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/Element;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/Element$SceneState;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/Element$SceneState;->getTargetSize-YbymL2g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object p0

    sget-object v1, Lcom/android/compose/animation/scene/Element;->Companion:Lcom/android/compose/animation/scene/Element$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Lcom/android/compose/animation/scene/Element;->SizeUnspecified:J

    iget-wide v3, p0, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    iget-boolean p4, p1, Lcom/android/compose/animation/scene/transformation/AnchoredSize;->anchorWidth:Z

    const/16 v0, 0x20

    iget-wide v1, p0, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    if-eqz p4, :cond_1

    shr-long v3, v1, v0

    :goto_1
    long-to-int p0, v3

    goto :goto_2

    :cond_1
    shr-long v3, p2, v0

    goto :goto_1

    :goto_2
    iget-boolean p1, p1, Lcom/android/compose/animation/scene/transformation/AnchoredSize;->anchorHeight:Z

    const-wide v3, 0xffffffffL

    if-eqz p1, :cond_2

    and-long p1, v1, v3

    :goto_3
    long-to-int p1, p1

    goto :goto_4

    :cond_2
    and-long p1, p2, v3

    goto :goto_3

    :goto_4
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p0

    return-wide p0

    :cond_3
    const-string p0, "AnchoredSize"

    iget-object p1, p1, Lcom/android/compose/animation/scene/transformation/AnchoredSize;->anchor:Lcom/android/compose/animation/scene/ElementKey;

    invoke-static {p0, p1, p4}, Lcom/android/compose/animation/scene/transformation/AnchoredTranslateKt;->throwMissingAnchorException(Ljava/lang/String;Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)V

    throw v0
.end method


# virtual methods
.method public final getMatcher()Lcom/android/compose/animation/scene/ElementMatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transformation/AnchoredSize;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    return-object p0
.end method

.method public final transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p6, Landroidx/compose/ui/unit/IntSize;

    iget-wide p3, p6, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    iget-object p6, p5, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p2, p6}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p5, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p1, p0, p3, p4, p2}, Lcom/android/compose/animation/scene/transformation/AnchoredSize;->transform_xOqHW7M$anchorSizeIn(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/transformation/AnchoredSize;JLcom/android/compose/animation/scene/SceneKey;)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p0, p3, p4, p6}, Lcom/android/compose/animation/scene/transformation/AnchoredSize;->transform_xOqHW7M$anchorSizeIn(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/transformation/AnchoredSize;JLcom/android/compose/animation/scene/SceneKey;)J

    move-result-wide p0

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object p0

    return-object p0
.end method
