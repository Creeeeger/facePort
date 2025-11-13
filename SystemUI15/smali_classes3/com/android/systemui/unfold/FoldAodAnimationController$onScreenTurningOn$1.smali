.class public final Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $onReady:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/FoldAodAnimationController;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    iput-object p2, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->$onReady:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    iget-boolean v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isScrimOpaque:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->$onReady:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->$onReady:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->pendingScrimReadyCallback:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isFolded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isFoldHandled:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->alwaysOnEnabled:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->keyguardInteractor:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isDozing:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/unfold/FoldAodAnimationController;->setAnimationState(Z)V

    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->getShadeFoldAnimator$1()Lcom/android/systemui/shade/ShadeFoldAnimator;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeFoldAnimator;->prepareFoldToAodAnimation()V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->getShadeFoldAnimator$1()Lcom/android/systemui/shade/ShadeFoldAnimator;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeFoldAnimator;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->$onReady:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->$onReady:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    iget-boolean v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isFolded:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isFoldHandled:Z

    :cond_4
    return-void
.end method
