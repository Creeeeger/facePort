.class public final Lcom/android/systemui/animation/ActivityTransitionAnimator$DelegatingAnimationCompletionListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;


# instance fields
.field public cancelled:Z

.field public final delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

.field public final onAnimationComplete:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$DelegatingAnimationCompletionListener;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    iput-object p3, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$DelegatingAnimationCompletionListener;->onAnimationComplete:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onTransitionAnimationCancelled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$DelegatingAnimationCompletionListener;->cancelled:Z

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$DelegatingAnimationCompletionListener;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;->onTransitionAnimationCancelled()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$DelegatingAnimationCompletionListener;->onAnimationComplete:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onTransitionAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$DelegatingAnimationCompletionListener;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;->onTransitionAnimationEnd()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$DelegatingAnimationCompletionListener;->cancelled:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$DelegatingAnimationCompletionListener;->onAnimationComplete:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final onTransitionAnimationProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$DelegatingAnimationCompletionListener;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;->onTransitionAnimationProgress(F)V

    :cond_0
    return-void
.end method

.method public final onTransitionAnimationStart()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$DelegatingAnimationCompletionListener;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;->onTransitionAnimationStart()V

    :cond_0
    return-void
.end method
