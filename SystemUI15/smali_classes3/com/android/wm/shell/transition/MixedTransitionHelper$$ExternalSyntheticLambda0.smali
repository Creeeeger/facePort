.class public final synthetic Lcom/android/wm/shell/transition/MixedTransitionHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;ZLcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/MixedTransitionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iput-boolean p2, p0, Lcom/android/wm/shell/transition/MixedTransitionHelper$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/wm/shell/transition/MixedTransitionHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p4, p0, Lcom/android/wm/shell/transition/MixedTransitionHelper$$ExternalSyntheticLambda0;->f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/MixedTransitionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iget v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->joinFinishArgs(Landroid/window/WindowContainerTransaction;)V

    iget p1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/transition/MixedTransitionHelper$$ExternalSyntheticLambda0;->f$1:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/transition/MixedTransitionHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onTransitionAnimationComplete()V

    :cond_1
    iget-object p1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/transition/MixedTransitionHelper$$ExternalSyntheticLambda0;->f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    :goto_0
    return-void
.end method
