.class public final Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;
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
.field final synthetic $backgroundDispatcher$inlined:Lkotlinx/coroutines/CoroutineDispatcher;

.field final synthetic $devicePolicyManager$inlined:Landroid/app/admin/DevicePolicyManager;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/app/admin/DevicePolicyManager;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->this$0:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->$backgroundDispatcher$inlined:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->$devicePolicyManager$inlined:Landroid/app/admin/DevicePolicyManager;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->this$0:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    iget-object v2, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->$backgroundDispatcher$inlined:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->$devicePolicyManager$inlined:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v0, p3, v1, v2, p0}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/app/admin/DevicePolicyManager;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->this$0:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    iget-object v3, v3, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->devicePolicyChangedForAllUsers:Lkotlinx/coroutines/flow/Flow;

    new-instance v4, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFingerprintEnabledByDevicePolicy$1$1;

    iget-object v5, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->$devicePolicyManager$inlined:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v1, v6}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFingerprintEnabledByDevicePolicy$1$1;-><init>(Landroid/app/admin/DevicePolicyManager;ILkotlin/coroutines/Continuation;)V

    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFingerprintEnabledByDevicePolicy$1$2;

    iget-object v5, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->$devicePolicyManager$inlined:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v4, v5, v1, v6}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFingerprintEnabledByDevicePolicy$1$2;-><init>(Landroid/app/admin/DevicePolicyManager;ILkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v1, v4, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->$backgroundDispatcher$inlined:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput v2, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$flatMapLatest$6;->label:I

    invoke-static {p0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
