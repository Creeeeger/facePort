.class public final synthetic Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/transition/DefaultMixedTransition;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultMixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/DefaultMixedTransition;

    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;)V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/DefaultMixedTransition;

    iget v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->joinFinishArgs(Landroid/window/WindowContainerTransaction;)V

    iget p1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/DefaultMixedTransition;

    iget v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->joinFinishArgs(Landroid/window/WindowContainerTransaction;)V

    iget p1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/DefaultMixedTransition;

    iget v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    :goto_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/DefaultMixedTransition;

    iget v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->joinFinishArgs(Landroid/window/WindowContainerTransaction;)V

    iget p1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-lez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
