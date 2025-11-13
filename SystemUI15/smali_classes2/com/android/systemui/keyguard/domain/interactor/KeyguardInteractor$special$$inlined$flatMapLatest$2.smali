.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;
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
.field final synthetic $shadeRepository$inlined:Lcom/android/systemui/shade/data/repository/ShadeRepository;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;->$shadeRepository$inlined:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;

    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;->$shadeRepository$inlined:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-direct {v0, p3, v1, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;->$shadeRepository$inlined:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v3, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v3, v3, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyShadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v6, v4, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v3, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    sget-object v4, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValue(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$2;

    invoke-direct {v4, v5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v7, v4, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;

    invoke-direct {v3, v1, v5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$keyguardTranslationY$1$3;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v6, v7, v3}, Lkotlinx/coroutines/flow/FlowKt;->combineTransform(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object v1

    iput v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$flatMapLatest$2;->label:I

    invoke-static {p0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
