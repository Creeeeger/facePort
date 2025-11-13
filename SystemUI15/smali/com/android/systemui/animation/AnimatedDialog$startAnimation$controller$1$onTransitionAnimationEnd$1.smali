.class public final Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onTransitionAnimationEnd$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $endController:Lcom/android/systemui/animation/TransitionAnimator$Controller;

.field public final synthetic $isExpandingFullyAbove:Z

.field public final synthetic $onLaunchAnimationEnd:Lkotlin/jvm/functions/Function0;

.field public final synthetic $startController:Lcom/android/systemui/animation/TransitionAnimator$Controller;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/TransitionAnimator$Controller;ZLcom/android/systemui/animation/TransitionAnimator$Controller;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/TransitionAnimator$Controller;",
            "Z",
            "Lcom/android/systemui/animation/TransitionAnimator$Controller;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onTransitionAnimationEnd$1;->$startController:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    iput-boolean p2, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onTransitionAnimationEnd$1;->$isExpandingFullyAbove:Z

    iput-object p3, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onTransitionAnimationEnd$1;->$endController:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    iput-object p4, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onTransitionAnimationEnd$1;->$onLaunchAnimationEnd:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onTransitionAnimationEnd$1;->$startController:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    iget-boolean v1, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onTransitionAnimationEnd$1;->$isExpandingFullyAbove:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationEnd(Z)V

    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onTransitionAnimationEnd$1;->$endController:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    iget-boolean v1, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onTransitionAnimationEnd$1;->$isExpandingFullyAbove:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationEnd(Z)V

    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onTransitionAnimationEnd$1;->$onLaunchAnimationEnd:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
