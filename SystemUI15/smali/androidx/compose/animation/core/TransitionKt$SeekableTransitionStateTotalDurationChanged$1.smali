.class final Landroidx/compose/animation/core/TransitionKt$SeekableTransitionStateTotalDurationChanged$1;
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
.field public static final INSTANCE:Landroidx/compose/animation/core/TransitionKt$SeekableTransitionStateTotalDurationChanged$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/TransitionKt$SeekableTransitionStateTotalDurationChanged$1;

    invoke-direct {v0}, Landroidx/compose/animation/core/TransitionKt$SeekableTransitionStateTotalDurationChanged$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/TransitionKt$SeekableTransitionStateTotalDurationChanged$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$SeekableTransitionStateTotalDurationChanged$1;

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
    .locals 4

    check-cast p1, Landroidx/compose/animation/core/SeekableTransitionState;

    iget-wide v0, p1, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    sget-object p0, Landroidx/compose/animation/core/TransitionKt;->SeekableStateObserver$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    sget-object v2, Landroidx/compose/animation/core/TransitionKt;->SeekableTransitionStateTotalDurationChanged:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Landroidx/compose/animation/core/SeekableTransitionState;->recalculateTotalDurationNanos:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iget-wide v2, p1, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    if-eqz p0, :cond_0

    iput-wide v2, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->durationNanos:J

    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->start:Landroidx/compose/animation/core/AnimationVector1D;

    invoke-virtual {v1, v0}, Landroidx/compose/animation/core/AnimationVector1D;->get$animation_core_release(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    iget-wide v0, p1, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    long-to-double v0, v0

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(D)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpecDuration:J

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/animation/core/SeekableTransitionState;->seekToFraction()V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
