.class Lcom/android/systemui/dreams/DreamOverlayService$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService$4;->this$0:Lcom/android/systemui/dreams/DreamOverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService$4;->this$0:Lcom/android/systemui/dreams/DreamOverlayService;

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mExitAnimationFinishedCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    iget-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayService;->resetCurrentDreamOverlayLocked()V

    :cond_0
    return-void
.end method
