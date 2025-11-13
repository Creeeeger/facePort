.class public final Lcom/android/systemui/animation/ActivityTransitionAnimator$lifecycleListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityTransitionAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$lifecycleListener$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionAnimationCancelled()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$lifecycleListener$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;->onTransitionAnimationCancelled()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTransitionAnimationEnd()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$lifecycleListener$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;->onTransitionAnimationEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTransitionAnimationProgress(F)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$lifecycleListener$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;->onTransitionAnimationProgress(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTransitionAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$lifecycleListener$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;->onTransitionAnimationStart()V

    goto :goto_0

    :cond_0
    return-void
.end method
