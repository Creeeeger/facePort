.class public final Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/animation/core/Transition$Segment;


# instance fields
.field public animatedSize:Landroidx/compose/runtime/State;

.field public contentAlignment:Landroidx/compose/ui/Alignment;

.field public layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public final measuredSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final targetSizeMap:Landroidx/collection/MutableScatterMap;

.field public final transition:Landroidx/compose/animation/core/Transition;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->transition:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->contentAlignment:Landroidx/compose/ui/Alignment;

    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    new-instance p1, Landroidx/compose/ui/unit/IntSize;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    sget-object p2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->measuredSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    new-instance p1, Landroidx/collection/MutableScatterMap;

    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->targetSizeMap:Landroidx/collection/MutableScatterMap;

    return-void
.end method

.method public static final access$calculateOffset-emnUabE(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;JJ)J
    .locals 6

    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->contentAlignment:Landroidx/compose/ui/Alignment;

    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final access$getCurrentSize-YbymL2g(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->animatedSize:Landroidx/compose/runtime/State;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    iget-wide v0, p0, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->measuredSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    iget-wide v0, p0, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final getInitialState()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->transition:Landroidx/compose/animation/core/Transition;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/animation/core/Transition$Segment;->getInitialState()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetState()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->transition:Landroidx/compose/animation/core/Transition;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/animation/core/Transition$Segment;->getTargetState()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isLeft-gWo6LJ4(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-static {p1, v1}, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x5

    invoke-static {p1, v1}, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final isRight-gWo6LJ4(I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    invoke-static {p1, v1}, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v1, v2, :cond_2

    :cond_0
    const/4 v1, 0x5

    invoke-static {p1, v1}, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public final slideIntoContainer-mOhB8PU(ILandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransitionImpl;
    .locals 8

    invoke-virtual {p0, p1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->isLeft-gWo6LJ4(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideIntoContainer$1;

    invoke-direct {p1, p0, p3}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideIntoContainer$1;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    new-instance p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInHorizontally$2;

    invoke-direct {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideInHorizontally$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Landroidx/compose/animation/EnterTransitionImpl;

    new-instance p3, Landroidx/compose/animation/TransitionData;

    new-instance v2, Landroidx/compose/animation/Slide;

    invoke-direct {v2, p0, p2}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3d

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ZLjava/util/Map;I)V

    invoke-direct {p1, p3}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->isRight-gWo6LJ4(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideIntoContainer$2;

    invoke-direct {p1, p0, p3}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideIntoContainer$2;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    new-instance p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInHorizontally$2;

    invoke-direct {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideInHorizontally$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Landroidx/compose/animation/EnterTransitionImpl;

    new-instance p3, Landroidx/compose/animation/TransitionData;

    new-instance v2, Landroidx/compose/animation/Slide;

    invoke-direct {v2, p0, p2}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3d

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ZLjava/util/Map;I)V

    invoke-direct {p1, p3}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideIntoContainer$3;

    invoke-direct {p1, p0, p3}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideIntoContainer$3;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    new-instance p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;

    invoke-direct {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Landroidx/compose/animation/EnterTransitionImpl;

    new-instance p3, Landroidx/compose/animation/TransitionData;

    new-instance v2, Landroidx/compose/animation/Slide;

    invoke-direct {v2, p0, p2}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3d

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ZLjava/util/Map;I)V

    invoke-direct {p1, p3}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideIntoContainer$4;

    invoke-direct {p1, p0, p3}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideIntoContainer$4;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    new-instance p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;

    invoke-direct {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Landroidx/compose/animation/EnterTransitionImpl;

    new-instance p3, Landroidx/compose/animation/TransitionData;

    new-instance v2, Landroidx/compose/animation/Slide;

    invoke-direct {v2, p0, p2}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3d

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ZLjava/util/Map;I)V

    invoke-direct {p1, p3}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    goto :goto_0

    :cond_3
    sget-object p1, Landroidx/compose/animation/EnterTransition;->None:Landroidx/compose/animation/EnterTransitionImpl;

    :goto_0
    return-object p1
.end method

.method public final slideOutOfContainer-mOhB8PU(ILandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransitionImpl;
    .locals 8

    invoke-virtual {p0, p1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->isLeft-gWo6LJ4(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideOutOfContainer$1;

    invoke-direct {p1, p0, p3}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideOutOfContainer$1;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    new-instance p0, Landroidx/compose/animation/EnterExitTransitionKt$slideOutHorizontally$2;

    invoke-direct {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideOutHorizontally$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Landroidx/compose/animation/ExitTransitionImpl;

    new-instance p3, Landroidx/compose/animation/TransitionData;

    new-instance v2, Landroidx/compose/animation/Slide;

    invoke-direct {v2, p0, p2}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3d

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ZLjava/util/Map;I)V

    invoke-direct {p1, p3}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->isRight-gWo6LJ4(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideOutOfContainer$2;

    invoke-direct {p1, p0, p3}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideOutOfContainer$2;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    new-instance p0, Landroidx/compose/animation/EnterExitTransitionKt$slideOutHorizontally$2;

    invoke-direct {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideOutHorizontally$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Landroidx/compose/animation/ExitTransitionImpl;

    new-instance p3, Landroidx/compose/animation/TransitionData;

    new-instance v2, Landroidx/compose/animation/Slide;

    invoke-direct {v2, p0, p2}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3d

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ZLjava/util/Map;I)V

    invoke-direct {p1, p3}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideOutOfContainer$3;

    invoke-direct {p1, p0, p3}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideOutOfContainer$3;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    new-instance p0, Landroidx/compose/animation/EnterExitTransitionKt$slideOutVertically$2;

    invoke-direct {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideOutVertically$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Landroidx/compose/animation/ExitTransitionImpl;

    new-instance p3, Landroidx/compose/animation/TransitionData;

    new-instance v2, Landroidx/compose/animation/Slide;

    invoke-direct {v2, p0, p2}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3d

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ZLjava/util/Map;I)V

    invoke-direct {p1, p3}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideOutOfContainer$4;

    invoke-direct {p1, p0, p3}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$slideOutOfContainer$4;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    new-instance p0, Landroidx/compose/animation/EnterExitTransitionKt$slideOutVertically$2;

    invoke-direct {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideOutVertically$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Landroidx/compose/animation/ExitTransitionImpl;

    new-instance p3, Landroidx/compose/animation/TransitionData;

    new-instance v2, Landroidx/compose/animation/Slide;

    invoke-direct {v2, p0, p2}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3d

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ZLjava/util/Map;I)V

    invoke-direct {p1, p3}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    goto :goto_0

    :cond_3
    sget-object p1, Landroidx/compose/animation/ExitTransition;->None:Landroidx/compose/animation/ExitTransitionImpl;

    :goto_0
    return-object p1
.end method
