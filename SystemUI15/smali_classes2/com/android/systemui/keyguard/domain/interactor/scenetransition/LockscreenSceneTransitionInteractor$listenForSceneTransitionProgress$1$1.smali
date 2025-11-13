.class public final Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor$listenForSceneTransitionProgress$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor$listenForSceneTransitionProgress$1$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/util/kotlin/WithPrev;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/WithPrev;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/animation/scene/ObservableTransitionState;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/WithPrev;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/compose/animation/scene/ObservableTransitionState;

    instance-of v1, p1, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor$listenForSceneTransitionProgress$1$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;

    if-eqz v1, :cond_6

    check-cast p1, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;->currentTransitionId:Ljava/util/UUID;

    if-nez v1, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    if-nez v1, :cond_1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;->currentScene:Lcom/android/compose/animation/scene/SceneKey;

    check-cast v0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    iget-object v0, v0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;->transitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;->currentTransitionId:Ljava/util/UUID;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p2, Lcom/android/systemui/keyguard/shared/model/TransitionState;->FINISHED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    iget-object v0, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->updateTransition(Ljava/util/UUID;FLcom/android/systemui/keyguard/shared/model/TransitionState;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;->resetTransitionData()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/systemui/scene/shared/model/Scenes;->Lockscreen:Lcom/android/compose/animation/scene/SceneKey;

    iget-object p1, p1, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;->currentScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardFromState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->$$delegate_0:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/SharedFlow;->getReplayCache()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->UNDEFINED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;->finishReversedTransitionTo(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_4

    goto :goto_1

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_6
    instance-of v0, p1, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    invoke-static {p1, p0, p2}, Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;->access$handleTransition(Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_7

    goto :goto_2

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    return-object p0
.end method
