.class public final Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $communalInteractor$inlined:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field final synthetic $deviceEntryInteractor$inlined:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

.field final synthetic $shadeInteractor$inlined:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->$deviceEntryInteractor$inlined:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->$communalInteractor$inlined:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->$shadeInteractor$inlined:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    move-object v1, p3

    check-cast v1, Lkotlin/coroutines/Continuation;

    new-instance p3, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->$deviceEntryInteractor$inlined:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->$communalInteractor$inlined:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->$shadeInteractor$inlined:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel;

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel;)V

    iput-object p1, p3, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p3, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->$deviceEntryInteractor$inlined:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

    iget-object v1, v1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->isUnlocked:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->$communalInteractor$inlined:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v3, v3, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalAvailable:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->$shadeInteractor$inlined:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v4, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v4, v4, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v4}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$destinationScenes$1$1;

    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$destinationScenes$1$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v4, v5}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v3

    :goto_0
    iput v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v3, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
