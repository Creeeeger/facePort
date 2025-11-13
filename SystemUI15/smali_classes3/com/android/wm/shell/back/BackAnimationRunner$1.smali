.class public final Lcom/android/wm/shell/back/BackAnimationRunner$1;
.super Landroid/view/IRemoteAnimationFinishedCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/BackAnimationRunner;

.field public final synthetic val$apps:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic val$finishedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/BackAnimationRunner;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationRunner$1;->this$0:Lcom/android/wm/shell/back/BackAnimationRunner;

    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationRunner$1;->val$apps:[Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/wm/shell/back/BackAnimationRunner$1;->val$finishedCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationFinishedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationRunner$1;->this$0:Lcom/android/wm/shell/back/BackAnimationRunner;

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationRunner$1;->val$apps:[Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/back/BackAnimationRunner;->shouldMonitorCUJ([Landroid/view/RemoteAnimationTarget;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationRunner$1;->this$0:Lcom/android/wm/shell/back/BackAnimationRunner;

    iget v0, v0, Lcom/android/wm/shell/back/BackAnimationRunner;->mCujType:I

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationRunner$1;->val$finishedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
