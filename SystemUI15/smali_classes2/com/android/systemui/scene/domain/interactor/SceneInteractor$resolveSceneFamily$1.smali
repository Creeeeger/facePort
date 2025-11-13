.class final Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $sceneKey:Lcom/android/compose/animation/scene/SceneKey;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/compose/animation/scene/SceneKey;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/scene/domain/interactor/SceneInteractor;",
            "Lcom/android/compose/animation/scene/SceneKey;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;->this$0:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    iput-object p2, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;->$sceneKey:Lcom/android/compose/animation/scene/SceneKey;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;

    iget-object v1, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;->this$0:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    iget-object p0, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;->$sceneKey:Lcom/android/compose/animation/scene/SceneKey;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;-><init>(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/compose/animation/scene/SceneKey;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;->this$0:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    iget-object v3, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;->$sceneKey:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v1, v1, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->sceneFamilyResolvers:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/scene/domain/resolver/SceneResolver;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/systemui/scene/domain/resolver/SceneResolver;->getResolvedScene()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;->$sceneKey:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    move-object v1, v3

    :goto_1
    iput v2, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;->label:I

    invoke-static {p0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
