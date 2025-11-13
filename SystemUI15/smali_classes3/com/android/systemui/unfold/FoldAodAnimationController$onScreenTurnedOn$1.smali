.class public final Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    iget-boolean v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->cancelAnimation:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    iget-object v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-wide/16 v2, 0x0

    iget-object v4, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->startAnimationRunnable:Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;

    invoke-interface {v1, v4, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->cancelAnimation:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    :cond_1
    return-void
.end method
