.class public final Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->getShadeFoldAnimator$1()Lcom/android/systemui/shade/ShadeFoldAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$1;

    iget-object v2, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    invoke-direct {v1, v2}, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$1;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V

    new-instance v2, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$2;

    iget-object v3, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    invoke-direct {v2, v3}, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$2;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V

    new-instance v3, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$3;

    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    invoke-direct {v3, p0}, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$3;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/shade/ShadeFoldAnimator;->startFoldToAodAnimation(Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$1;Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$2;Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$3;)V

    return-void
.end method
