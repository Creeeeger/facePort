.class public final Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;


# instance fields
.field public final backgroundScope:Lkotlinx/coroutines/CoroutineScope;

.field public final isFullyCollapsed:Z

.field public final lockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/shade/data/repository/ShadeRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p2, p0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iput-object p4, p0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    iput-object p5, p0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;->lockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;->isFullyCollapsed:Z

    return-void
.end method


# virtual methods
.method public final blockExpansionForCurrentTouch()V
    .locals 0

    return-void
.end method

.method public final dozeTimeTick()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;->lockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final expandToNotifications()V
    .locals 4

    sget-object v0, Lcom/android/systemui/scene/shared/model/SceneFamilies;->NotifShade:Lcom/android/compose/animation/scene/SceneKey;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    const/16 v1, 0xc

    const-string v2, "ShadeLockscreenInteractorImpl.expandToNotifications"

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->changeScene$default(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/compose/animation/scene/SceneKey;Ljava/lang/String;Lcom/android/compose/animation/scene/TransitionKey;I)V

    return-void
.end method

.method public final isExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isFullyCollapsed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;->isFullyCollapsed:Z

    return p0
.end method

.method public final resetViewGroupFade()V
    .locals 0

    return-void
.end method

.method public final resetViews(Z)V
    .locals 3

    sget-object p1, Lcom/android/systemui/scene/shared/model/SceneFamilies;->NotifShade:Lcom/android/compose/animation/scene/SceneKey;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    const/16 v0, 0xc

    const-string v1, "ShadeLockscreenInteractorImpl.expandToNotifications"

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->changeScene$default(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/compose/animation/scene/SceneKey;Ljava/lang/String;Lcom/android/compose/animation/scene/TransitionKey;I)V

    return-void
.end method

.method public final setKeyguardStatusBarAlpha(F)V
    .locals 0

    return-void
.end method

.method public final setKeyguardTransitionProgress(F)V
    .locals 0

    return-void
.end method

.method public final setOverStretchAmount(F)V
    .locals 0

    return-void
.end method

.method public final setPulsing(Z)V
    .locals 0

    return-void
.end method

.method public final showAodUi()V
    .locals 4

    sget-object v0, Lcom/android/systemui/scene/shared/model/Scenes;->Lockscreen:Lcom/android/compose/animation/scene/SceneKey;

    const-string/jumbo v1, "showAodUi"

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    const/16 v3, 0xc

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->changeScene$default(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/compose/animation/scene/SceneKey;Ljava/lang/String;Lcom/android/compose/animation/scene/TransitionKey;I)V

    return-void
.end method

.method public final startBouncerPreHideAnimation()V
    .locals 0

    return-void
.end method

.method public final transitionToExpandedShade(JZ)V
    .locals 1

    new-instance p3, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl$transitionToExpandedShade$1;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, p0, v0}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl$transitionToExpandedShade$1;-><init>(JLcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractorImpl;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v0, v0, p3, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
