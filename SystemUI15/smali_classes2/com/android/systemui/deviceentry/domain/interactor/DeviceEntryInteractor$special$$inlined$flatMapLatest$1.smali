.class public final Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;
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
.field final synthetic $faceAuthInteractor$inlined:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

    iput-object p3, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->$faceAuthInteractor$inlined:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;

    iget-object v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->$faceAuthInteractor$inlined:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    invoke-direct {v0, p3, v1, p0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;)V

    iput-object p1, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/Triple;

    invoke-virtual {v1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

    iget-object v3, v3, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->biometricSettingsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;

    iget-object v3, v3, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;->authenticationFlags:Lkotlinx/coroutines/flow/Flow;

    iget-object v4, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->$faceAuthInteractor$inlined:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    invoke-interface {v4}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->isLockedOut()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

    iget-object v6, v5, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->fingerprintAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;

    iget-object v6, v6, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->isLockedOut:Lkotlinx/coroutines/flow/Flow;

    iget-object v5, v5, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->trustInteractor:Lcom/android/systemui/keyguard/domain/interactor/TrustInteractor;

    iget-object v5, v5, Lcom/android/systemui/keyguard/domain/interactor/TrustInteractor;->isTrustAgentCurrentlyAllowed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v7, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$1$2;->INSTANCE:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$1$2;

    invoke-static {v3, v4, v6, v5, v7}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1;

    iget-object v5, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

    iget-object v6, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->$faceAuthInteractor$inlined:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    invoke-direct {v4, v3, v5, v6, v1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Z)V

    move-object v1, v4

    :goto_1
    iput v2, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$special$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
