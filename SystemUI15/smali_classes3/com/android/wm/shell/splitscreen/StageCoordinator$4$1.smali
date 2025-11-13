.class public final Lcom/android/wm/shell/splitscreen/StageCoordinator$4$1;
.super Landroid/view/IRemoteAnimationFinishedCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/splitscreen/StageCoordinator$4;

.field public final synthetic val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator$4;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4$1;->this$1:Lcom/android/wm/shell/splitscreen/StageCoordinator$4;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationFinishedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4$1;->this$1:Lcom/android/wm/shell/splitscreen/StageCoordinator$4;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;->val$evictWct:Landroid/window/WindowContainerTransaction;

    invoke-static {v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->-$$Nest$monRemoteAnimationFinishedOrCancelled(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    return-void
.end method
