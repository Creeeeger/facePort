.class public final Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor$foldAnimator$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeFoldAnimator;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor$foldAnimator$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelFoldToAodAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor$foldAnimator$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;->parentAnimator:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;->cancelFoldToAodAnimation()V

    :cond_0
    return-void
.end method

.method public final getView()Landroid/view/ViewGroup;
    .locals 1

    new-instance p0, Lkotlin/NotImplementedError;

    const-string v0, "Deprecated. Do not call."

    invoke-direct {p0, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final prepareFoldToAodAnimation()V
    .locals 5

    sget-object v0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor$foldAnimator$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor$forceToAod$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor$forceToAod$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v4, 0x2

    invoke-static {v2, v3, v1, v0, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;->parentAnimator:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;->prepareFoldToAodAnimation()V

    :cond_0
    return-void
.end method

.method public final startFoldToAodAnimation(Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$1;Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$2;Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$3;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor$foldAnimator$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;->parentAnimator:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;->buildViewAnimator(Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$1;Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$2;Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$3;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor$foldAnimator$1$startFoldToAodAnimation$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor$foldAnimator$1$startFoldToAodAnimation$1$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method
