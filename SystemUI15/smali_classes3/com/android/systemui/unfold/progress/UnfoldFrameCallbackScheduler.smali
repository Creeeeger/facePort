.class public final Lcom/android/systemui/unfold/progress/UnfoldFrameCallbackScheduler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/FrameCallbackScheduler;


# instance fields
.field public final choreographer:Landroid/view/Choreographer;

.field public final looper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/unfold/progress/UnfoldFrameCallbackScheduler;->choreographer:Landroid/view/Choreographer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/systemui/unfold/progress/UnfoldFrameCallbackScheduler;->looper:Landroid/os/Looper;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This should be created in a thread with a looper."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final isCurrentThread()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/UnfoldFrameCallbackScheduler;->looper:Landroid/os/Looper;

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    return p0
.end method

.method public final postFrameCallback(Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/UnfoldFrameCallbackScheduler;->choreographer:Landroid/view/Choreographer;

    new-instance v0, Lcom/android/systemui/unfold/progress/UnfoldFrameCallbackScheduler$postFrameCallback$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/unfold/progress/UnfoldFrameCallbackScheduler$postFrameCallback$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
