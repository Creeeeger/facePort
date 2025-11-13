.class final Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$2$1;
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
.field final synthetic $this_animateValue:Landroidx/compose/animation/core/InfiniteTransition;

.field final synthetic $transitionAnimation:Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/InfiniteTransition;",
            "Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$2$1;->$this_animateValue:Landroidx/compose/animation/core/InfiniteTransition;

    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$2$1;->$transitionAnimation:Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$2$1;->$this_animateValue:Landroidx/compose/animation/core/InfiniteTransition;

    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$2$1;->$transitionAnimation:Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iget-object v1, p1, Landroidx/compose/animation/core/InfiniteTransition;->_animations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p1, Landroidx/compose/animation/core/InfiniteTransition;->refreshChildNeeded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$2$1;->$this_animateValue:Landroidx/compose/animation/core/InfiniteTransition;

    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$2$1;->$transitionAnimation:Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    new-instance v0, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$2$1$invoke$$inlined$onDispose$1;

    invoke-direct {v0, p1, p0}, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$2$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;)V

    return-object v0
.end method
