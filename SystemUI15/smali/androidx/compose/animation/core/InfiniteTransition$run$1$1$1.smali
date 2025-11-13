.class final Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;
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
.field final synthetic $$this$LaunchedEffect:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $durationScale:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $toolingOverride:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/animation/core/InfiniteTransition;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/InfiniteTransition;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/animation/core/InfiniteTransition;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;->$toolingOverride:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    iput-object p3, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;->$durationScale:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p4, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;->$$this$LaunchedEffect:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;->$toolingOverride:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/State;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    iget-wide v4, p1, Landroidx/compose/animation/core/InfiniteTransition;->startTimeNanos:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long p1, v4, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;->$durationScale:Lkotlin/jvm/internal/Ref$FloatRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v6, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;->$$this$LaunchedEffect:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v6}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/animation/core/SuspendAnimationKt;->getDurationScale(Lkotlin/coroutines/CoroutineContext;)F

    move-result v6

    cmpg-float p1, p1, v6

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    iput-wide v0, p1, Landroidx/compose/animation/core/InfiniteTransition;->startTimeNanos:J

    iget-object p1, p1, Landroidx/compose/animation/core/InfiniteTransition;->_animations:Landroidx/compose/runtime/collection/MutableVector;

    iget v0, p1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v0, :cond_3

    iget-object p1, p1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    move v1, v5

    :cond_2
    aget-object v6, p1, v1

    check-cast v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iput-boolean v4, v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_2

    :cond_3
    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;->$durationScale:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;->$$this$LaunchedEffect:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/animation/core/SuspendAnimationKt;->getDurationScale(Lkotlin/coroutines/CoroutineContext;)F

    move-result v0

    iput v0, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :goto_1
    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;->$durationScale:Lkotlin/jvm/internal/Ref$FloatRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_5

    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransition;->_animations:Landroidx/compose/runtime/collection/MutableVector;

    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez p1, :cond_b

    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    :cond_4
    aget-object v0, p0, v5

    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iget-object v1, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    iget-object v1, v1, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableTargetValue:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iput-boolean v4, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    add-int/lit8 v5, v5, 0x1

    if-lt v5, p1, :cond_4

    goto :goto_3

    :cond_5
    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    iget-wide v0, p0, Landroidx/compose/animation/core/InfiniteTransition;->startTimeNanos:J

    sub-long/2addr v2, v0

    long-to-float v0, v2

    div-float/2addr v0, p1

    float-to-long v0, v0

    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition;->_animations:Landroidx/compose/runtime/collection/MutableVector;

    iget v2, p1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v2, :cond_a

    iget-object p1, p1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    move v6, v4

    move v3, v5

    :cond_6
    aget-object v7, p1, v3

    check-cast v7, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iget-boolean v8, v7, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->isFinished:Z

    if-nez v8, :cond_8

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v9, v7, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    iget-object v9, v9, Landroidx/compose/animation/core/InfiniteTransition;->refreshChildNeeded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-boolean v8, v7, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    if-eqz v8, :cond_7

    iput-boolean v5, v7, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    iput-wide v0, v7, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->playTimeNanosOffset:J

    :cond_7
    iget-wide v8, v7, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->playTimeNanosOffset:J

    sub-long v8, v0, v8

    iget-object v10, v7, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    invoke-virtual {v10, v8, v9}, Landroidx/compose/animation/core/TargetBasedAnimation;->getValueFromNanos(J)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v7, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v10, v7, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    invoke-interface {v10, v8, v9}, Landroidx/compose/animation/core/Animation;->isFinishedFromNanos(J)Z

    move-result v8

    iput-boolean v8, v7, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->isFinished:Z

    :cond_8
    iget-boolean v7, v7, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->isFinished:Z

    if-nez v7, :cond_9

    move v6, v5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_6

    goto :goto_2

    :cond_a
    move v6, v4

    :goto_2
    xor-int/lit8 p1, v6, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransition;->isRunning$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_b
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
