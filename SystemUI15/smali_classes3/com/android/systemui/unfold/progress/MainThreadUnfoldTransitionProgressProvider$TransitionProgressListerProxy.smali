.class public final Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# instance fields
.field public final listener:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

.field public final synthetic this$0:Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;->this$0:Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;->listener:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    return-void
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;->this$0:Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;

    iget-object v0, v0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy$onTransitionFinished$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy$onTransitionFinished$1;-><init>(Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTransitionFinishing()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;->this$0:Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;

    iget-object v0, v0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy$onTransitionFinishing$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy$onTransitionFinishing$1;-><init>(Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTransitionProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;->this$0:Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;

    iget-object v0, v0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy$onTransitionProgress$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy$onTransitionProgress$1;-><init>(Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTransitionStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;->this$0:Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;

    iget-object v0, v0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy$onTransitionStarted$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy$onTransitionStarted$1;-><init>(Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
