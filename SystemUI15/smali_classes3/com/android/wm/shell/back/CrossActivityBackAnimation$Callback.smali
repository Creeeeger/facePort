.class public final Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback;
.super Landroid/window/IOnBackInvokedCallback$Default;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/CrossActivityBackAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Default;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->triggerBack:Z

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->progressAnimator:Landroid/window/BackProgressAnimator;

    new-instance v1, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback$onBackCancelled$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback$onBackCancelled$1;-><init>(Lcom/android/wm/shell/back/CrossActivityBackAnimation;)V

    invoke-virtual {v0, v1}, Landroid/window/BackProgressAnimator;->onBackCancelled(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onBackInvoked()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->triggerBack:Z

    iget-object v0, v0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->progressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->reset()V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->progressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->getVelocity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->onGestureCommitted(F)V

    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackMotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTriggerBack()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->triggerBack:Z

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->progressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {p0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public final onBackStarted(Landroid/window/BackMotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    iget-object v0, v0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->progressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->removeOnBackCancelledFinishCallback()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startBackAnimation(Landroid/window/BackMotionEvent;)V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->progressAnimator:Landroid/window/BackProgressAnimator;

    new-instance v1, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback$onBackStarted$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback$onBackStarted$1;-><init>(Lcom/android/wm/shell/back/CrossActivityBackAnimation;)V

    invoke-virtual {v0, p1, v1}, Landroid/window/BackProgressAnimator;->onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V

    return-void
.end method
