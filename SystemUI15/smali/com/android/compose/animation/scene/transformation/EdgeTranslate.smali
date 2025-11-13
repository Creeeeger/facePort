.class public final Lcom/android/compose/animation/scene/transformation/EdgeTranslate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/transformation/PropertyTransformation;


# instance fields
.field public final edge:Lcom/android/compose/animation/scene/Edge;

.field public final matcher:Lcom/android/compose/animation/scene/ElementMatcher;

.field public final startsOutsideLayoutBounds:Z


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;Lcom/android/compose/animation/scene/Edge;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/transformation/EdgeTranslate;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    iput-object p2, p0, Lcom/android/compose/animation/scene/transformation/EdgeTranslate;->edge:Lcom/android/compose/animation/scene/Edge;

    iput-boolean p3, p0, Lcom/android/compose/animation/scene/transformation/EdgeTranslate;->startsOutsideLayoutBounds:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;Lcom/android/compose/animation/scene/Edge;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/compose/animation/scene/transformation/EdgeTranslate;-><init>(Lcom/android/compose/animation/scene/ElementMatcher;Lcom/android/compose/animation/scene/Edge;Z)V

    return-void
.end method


# virtual methods
.method public final getMatcher()Lcom/android/compose/animation/scene/ElementMatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transformation/EdgeTranslate;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    return-object p0
.end method

.method public final transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p6, Landroidx/compose/ui/geometry/Offset;

    iget-wide p5, p6, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-virtual {p1, p2}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Scene;

    move-result-object p1

    iget-object p1, p1, Lcom/android/compose/animation/scene/Scene;->targetSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide p1, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-virtual {p4}, Lcom/android/compose/animation/scene/Element$SceneState;->getTargetSize-YbymL2g()J

    move-result-wide p3

    sget-object v0, Lcom/android/compose/animation/scene/Element;->Companion:Lcom/android/compose/animation/scene/Element$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Lcom/android/compose/animation/scene/Element;->SizeUnspecified:J

    invoke-static {p3, p4, v0, v1}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/android/compose/animation/scene/transformation/EdgeTranslate$WhenMappings;->$EnumSwitchMapping$0:[I

    iget-object v1, p0, Lcom/android/compose/animation/scene/transformation/EdgeTranslate;->edge:Lcom/android/compose/animation/scene/Edge;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide v3, 0xffffffffL

    iget-boolean p0, p0, Lcom/android/compose/animation/scene/transformation/EdgeTranslate;->startsOutsideLayoutBounds:Z

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    const/16 v5, 0x20

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    if-eqz p0, :cond_1

    shr-long p0, p1, v5

    long-to-int p0, p0

    int-to-float p0, p0

    invoke-static {p5, p6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    :goto_0
    move-wide p5, p0

    goto :goto_1

    :cond_1
    shr-long p0, p1, v5

    long-to-int p0, p0

    shr-long p1, p3, v5

    long-to-int p1, p1

    sub-int/2addr p0, p1

    int-to-float p0, p0

    invoke-static {p5, p6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    goto :goto_0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    if-eqz p0, :cond_4

    invoke-static {p5, p6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    and-long/2addr p1, v3

    long-to-int p1, p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    goto :goto_0

    :cond_4
    invoke-static {p5, p6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    and-long/2addr p1, v3

    long-to-int p1, p1

    and-long p2, p3, v3

    long-to-int p2, p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    goto :goto_0

    :cond_5
    if-eqz p0, :cond_6

    shr-long p0, p3, v5

    long-to-int p0, p0

    int-to-float p0, p0

    neg-float p0, p0

    invoke-static {p5, p6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    goto :goto_0

    :cond_6
    invoke-static {p5, p6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {v2, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    goto :goto_0

    :cond_7
    if-eqz p0, :cond_8

    invoke-static {p5, p6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    and-long p1, p3, v3

    long-to-int p1, p1

    int-to-float p1, p1

    neg-float p1, p1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    goto :goto_0

    :cond_8
    invoke-static {p5, p6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    invoke-static {p0, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    goto :goto_0

    :goto_1
    invoke-static {p5, p6}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0
.end method
