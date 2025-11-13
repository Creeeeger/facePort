.class public final Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;
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
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;)V

    iput-object p1, v0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/compose/animation/scene/SceneKey;

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne v3, v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v1, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    iget-object v1, v1, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->deviceEntryFingerprintAuthInteractor:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;

    iget-object v1, v1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->isFingerprintAuthCurrentlyAllowed:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor$special$$inlined$map$1;

    iget-object v3, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    iget-object v3, v3, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->keyguardInteractor:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v3, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardDismissible:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v4, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    iget-object v5, v4, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->bouncerRepository:Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;

    check-cast v5, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;

    iget-object v5, v5, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerShow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v6, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$1$3$1;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$1$3$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v4, v4, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isDozingOrAod:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1, v3, v5, v4, v6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v3

    :goto_0
    iput v2, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$canShowAlternateBouncer$lambda$5$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v3, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
