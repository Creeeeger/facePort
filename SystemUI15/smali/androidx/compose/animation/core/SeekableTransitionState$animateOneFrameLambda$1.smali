.class final Landroidx/compose/animation/core/SeekableTransitionState$animateOneFrameLambda$1;
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
.field final synthetic this$0:Landroidx/compose/animation/core/SeekableTransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SeekableTransitionState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/SeekableTransitionState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/SeekableTransitionState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateOneFrameLambda$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateOneFrameLambda$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    iget-wide v2, p1, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    sub-long v2, v0, v2

    iput-wide v0, p1, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    long-to-double v0, v2

    iget p1, p1, Landroidx/compose/animation/core/SeekableTransitionState;->durationScale:F

    float-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(D)J

    move-result-wide v0

    iget-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateOneFrameLambda$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    iget-object v2, p1, Landroidx/compose/animation/core/SeekableTransitionState;->initialValueAnimations:Landroidx/collection/MutableObjectList;

    iget v3, v2, Landroidx/collection/ObjectList;->_size:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    const/4 v7, 0x0

    if-eqz v6, :cond_5

    iget-object v2, v2, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_1

    aget-object v8, v2, v6

    check-cast v8, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    invoke-static {p1, v8, v0, v1}, Landroidx/compose/animation/core/SeekableTransitionState;->access$recalculateAnimationValue(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;J)V

    iput-boolean v5, v8, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->isComplete:Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateOneFrameLambda$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    iget-object p1, p1, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->updateInitialValues$animation_core_release()V

    :cond_2
    iget-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateOneFrameLambda$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    iget-object p1, p1, Landroidx/compose/animation/core/SeekableTransitionState;->initialValueAnimations:Landroidx/collection/MutableObjectList;

    iget v2, p1, Landroidx/collection/ObjectList;->_size:I

    iget-object v3, p1, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    invoke-static {v4, v2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v5

    iget v6, v5, Lkotlin/ranges/IntProgression;->first:I

    iget v5, v5, Lkotlin/ranges/IntProgression;->last:I

    if-gt v6, v5, :cond_4

    :goto_2
    sub-int v8, v6, v4

    aget-object v9, v3, v6

    aput-object v9, v3, v8

    aget-object v8, v3, v6

    check-cast v8, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    iget-boolean v8, v8, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->isComplete:Z

    if-eqz v8, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-eq v6, v5, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    sub-int v5, v2, v4

    invoke-static {v3, v5, v2, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget v2, p1, Landroidx/collection/ObjectList;->_size:I

    sub-int/2addr v2, v4

    iput v2, p1, Landroidx/collection/ObjectList;->_size:I

    :cond_5
    iget-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateOneFrameLambda$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    iget-object v2, p1, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    if-eqz v2, :cond_7

    iget-wide v3, p1, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    iput-wide v3, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->durationNanos:J

    invoke-static {p1, v2, v0, v1}, Landroidx/compose/animation/core/SeekableTransitionState;->access$recalculateAnimationValue(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;J)V

    iget-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateOneFrameLambda$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    iget v0, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->value:F

    invoke-virtual {p1, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->setFraction(F)V

    iget p1, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->value:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_6

    iget-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateOneFrameLambda$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    iput-object v7, p1, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    :cond_6
    iget-object p0, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateOneFrameLambda$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    invoke-virtual {p0}, Landroidx/compose/animation/core/SeekableTransitionState;->seekToFraction()V

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
