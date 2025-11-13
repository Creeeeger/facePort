.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/BackAnimationController$3;

.field public final synthetic f$1:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$2:Landroid/window/IBackAnimationFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$3;[Landroid/view/RemoteAnimationTarget;Landroid/window/IBackAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$3$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/back/BackAnimationController$3;

    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController$3$$ExternalSyntheticLambda1;->f$1:[Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/wm/shell/back/BackAnimationController$3$$ExternalSyntheticLambda1;->f$2:Landroid/window/IBackAnimationFinishedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$3$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/back/BackAnimationController$3;

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController$3$$ExternalSyntheticLambda1;->f$1:[Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$3$$ExternalSyntheticLambda1;->f$2:Landroid/window/IBackAnimationFinishedCallback;

    iget-object v2, v0, Lcom/android/wm/shell/back/BackAnimationController$3;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iget-boolean v3, v2, Lcom/android/wm/shell/back/BackAnimationController;->mTrackingLatency:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lcom/android/wm/shell/back/BackAnimationController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/wm/shell/back/BackAnimationController;->mTrackingLatency:Z

    :goto_0
    invoke-static {v1}, Lcom/android/wm/shell/back/BackAnimationController;->validateAnimationTargets([Landroid/view/RemoteAnimationTarget;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "ShellBackPreview"

    const-string v0, "Invalid animation targets!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/back/BackAnimationController$3;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iput-object p0, v2, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationFinishedCallback:Landroid/window/IBackAnimationFinishedCallback;

    iput-object v1, v2, Lcom/android/wm/shell/back/BackAnimationController;->mApps:[Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v2}, Lcom/android/wm/shell/back/BackAnimationController;->startSystemAnimation()V

    iget-object p0, v0, Lcom/android/wm/shell/back/BackAnimationController$3;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {p0}, Landroid/window/BackTouchTracker;->createProgressEvent()Landroid/window/BackMotionEvent;

    move-result-object p0

    iget-object v1, v0, Lcom/android/wm/shell/back/BackAnimationController$3;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iget-object v2, v1, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v1, v2, p0}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackProgressed(Landroid/window/IOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V

    iget-object p0, v0, Lcom/android/wm/shell/back/BackAnimationController$3;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->startPostCommitAnimation()V

    :cond_2
    :goto_1
    return-void
.end method
