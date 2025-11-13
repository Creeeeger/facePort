.class public final Lcom/android/systemui/shade/ShadeControllerSceneImpl;
.super Lcom/android/systemui/shade/BaseShadeControllerImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final notificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/systemui/scene/domain/interactor/SceneInteractor;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p7, p8, p9, p10}, Lcom/android/systemui/shade/BaseShadeControllerImpl;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Ldagger/Lazy;)V

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p2, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iput-object p4, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    iput-object p5, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->notificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object p6, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    new-instance p1, Lcom/android/systemui/shade/ShadeControllerSceneImpl$1;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/shade/ShadeControllerSceneImpl$1;-><init>(Lcom/android/systemui/shade/ShadeControllerSceneImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p2, p3, p3, p1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final animateCollapseShade(FIZZ)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    if-nez p3, :cond_0

    move-object p3, p1

    check-cast p3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p3, p3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p3}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p3

    invoke-interface {p3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->runPostCollapseActions()V

    return-void

    :cond_0
    check-cast p1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p1}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    and-int/lit8 p1, p2, 0x4

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setNotificationShadeFocusable(Z)V

    iget-object p1, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->notificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3, p3}, Lcom/android/systemui/ExpandHelper;->finishExpanding(FZZ)V

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    new-instance p3, Landroid/view/ScaleGestureDetector;

    iget-object v0, p1, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Lcom/android/systemui/ExpandHelper$2;

    invoke-direct {p3, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p3, p1, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    if-eqz p4, :cond_1

    new-instance p1, Lcom/android/systemui/shade/ShadeControllerSceneImpl$animateCollapseShade$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/shade/ShadeControllerSceneImpl$animateCollapseShade$1;-><init>(Lcom/android/systemui/shade/ShadeControllerSceneImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p3, 0x3

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, p2, p2, p1, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/scene/shared/model/SceneFamilies;->Home:Lcom/android/compose/animation/scene/SceneKey;

    sget-object p2, Lcom/android/systemui/scene/shared/model/TransitionKeys;->INSTANCE:Lcom/android/systemui/scene/shared/model/TransitionKeys;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/scene/shared/model/TransitionKeys;->SlightlyFasterShadeCollapse:Lcom/android/compose/animation/scene/TransitionKey;

    const-string p3, "ShadeController.animateCollapseShade"

    const/16 p4, 0x8

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    invoke-static {p0, p1, p3, p2, p4}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->changeScene$default(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/compose/animation/scene/SceneKey;Ljava/lang/String;Lcom/android/compose/animation/scene/TransitionKey;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final cancelExpansionAndCollapseShade()V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(I)V

    return-void
.end method

.method public final closeShadeIfOpen()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    iget-object p0, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->assistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_0
    return-void
.end method

.method public final collapseOnMainThread()V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShadeForcedDelayed()V

    return-void
.end method

.method public final collapseShade()V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShadeForcedDelayed()V

    return-void
.end method

.method public final collapseShade(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->instantCollapseShade()V

    :goto_0
    return-void
.end method

.method public final collapseShadeForActivityStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShadeForcedDelayed()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->runPostCollapseActions()V

    :goto_0
    return-void
.end method

.method public final collapseWithDuration(I)V
    .locals 0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(I)V

    return-void
.end method

.method public final expandToNotifications()V
    .locals 4

    sget-object v0, Lcom/android/systemui/scene/shared/model/SceneFamilies;->NotifShade:Lcom/android/compose/animation/scene/SceneKey;

    const-string v1, "ShadeController.animateExpandShade"

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    const/16 v3, 0xc

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->changeScene$default(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/compose/animation/scene/SceneKey;Ljava/lang/String;Lcom/android/compose/animation/scene/TransitionKey;I)V

    return-void
.end method

.method public final expandToQs()V
    .locals 4

    sget-object v0, Lcom/android/systemui/scene/shared/model/SceneFamilies;->QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

    const-string v1, "ShadeController.animateExpandQs"

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    const/16 v3, 0xc

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->changeScene$default(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/compose/animation/scene/SceneKey;Ljava/lang/String;Lcom/android/compose/animation/scene/TransitionKey;I)V

    return-void
.end method

.method public final instantCollapseShade()V
    .locals 5

    sget-object v0, Lcom/android/systemui/scene/shared/model/SceneFamilies;->Home:Lcom/android/compose/animation/scene/SceneKey;

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    iget-object v1, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/compose/animation/scene/SceneKey;

    iget-object v2, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->sceneFamilyResolvers:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/scene/domain/resolver/SceneResolver;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Lcom/android/systemui/scene/domain/resolver/SceneResolver;->includesScene(Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lcom/android/systemui/scene/domain/resolver/SceneResolver;->getResolvedScene()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/compose/animation/scene/SceneKey;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_0
    const-string v2, "hide shade"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->validateSceneChange(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->logger:Lcom/android/systemui/scene/shared/logger/SceneLogger;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/android/systemui/scene/shared/logger/SceneLogger;->logSceneChangeRequested(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->repository:Lcom/android/systemui/scene/data/repository/SceneContainerRepository;

    iget-object p0, p0, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->dataSource:Lcom/android/systemui/scene/shared/model/SceneDataSource;

    invoke-interface {p0, v0}, Lcom/android/systemui/scene/shared/model/SceneDataSource;->snapToScene(Lcom/android/compose/animation/scene/SceneKey;)V

    :goto_1
    return-void
.end method

.method public final instantExpandShade()V
    .locals 0

    return-void
.end method

.method public final isExpandedVisible()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    iget-object p0, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/scene/shared/model/Scenes;->Gone:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isExpandingOrCollapsing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isUserInteracting:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isShadeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isShadeEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isShadeFullyOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isAnyFullyExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final makeExpandedInvisible()V
    .locals 0

    return-void
.end method

.method public final makeExpandedVisible(Z)V
    .locals 0

    return-void
.end method

.method public final onStatusBarTouch(Landroid/view/MotionEvent;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final performHapticFeedback()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->notificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public final postAnimateCollapseShade()V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(I)V

    return-void
.end method

.method public final postAnimateForceCollapseShade()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v0, v1, v0}, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->animateCollapseShade(FIZZ)V

    return-void
.end method

.method public final postOnShadeExpanded(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda1;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/ShadeControllerSceneImpl$postOnShadeExpanded$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/shade/ShadeControllerSceneImpl$postOnShadeExpanded$1;-><init>(Lcom/android/systemui/shade/ShadeControllerSceneImpl;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setVisibilityListener(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/ShadeControllerSceneImpl$setVisibilityListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/shade/ShadeControllerSceneImpl$setVisibilityListener$1;-><init>(Lcom/android/systemui/shade/ShadeControllerSceneImpl;Lcom/android/systemui/shade/ShadeController$ShadeVisibilityListener;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
