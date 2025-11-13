.class public final Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onTimeout$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onTimeout$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onTimeout$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    iget-boolean v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->cancelled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ActivityTransitionAnimator"

    const-string v1, "Remote animation timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->timedOut:Z

    sget-boolean v1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DEBUG_TRANSITION_ANIMATION:Z

    if-eqz v1, :cond_1

    const-string v1, "Calling controller.onTransitionAnimationCancelled() [animation timed out]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->controller:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v1, v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->onTransitionAnimationCancelled(Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->listener:Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;->onTransitionAnimationCancelled()V

    :cond_2
    :goto_0
    return-void
.end method
