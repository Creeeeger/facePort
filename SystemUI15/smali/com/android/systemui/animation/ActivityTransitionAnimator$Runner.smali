.class public final Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

.field public final synthetic this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;",
            "Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;",
            "Lcom/android/systemui/animation/TransitionAnimator;",
            "Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    new-instance v7, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    iget-object v1, p1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/animation/ActivityTransitionAnimator$DelegatingAnimationCompletionListener;

    new-instance v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, p1, p5, v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$DelegatingAnimationCompletionListener;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;Lkotlin/jvm/functions/Function0;)V

    iget-boolean v6, p1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->disableWmTimeout:Z

    move-object v0, v7

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;Lcom/android/systemui/animation/TransitionAnimator;Z)V

    iput-object v7, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;)V

    return-void
.end method

.method public static synthetic getDelegate$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationCancelled$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationCancelled$1;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 8

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationStart$1;

    move-object v0, v7

    move-object v2, p5

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationStart$1;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;Landroid/view/IRemoteAnimationFinishedCallback;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    invoke-interface {p0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
