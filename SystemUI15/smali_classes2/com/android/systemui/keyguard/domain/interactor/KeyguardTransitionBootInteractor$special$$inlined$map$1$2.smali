.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object p1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p2

    move-object p2, p0

    move-object p0, p1

    move-object p1, v7

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;

    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;->deviceEntryInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

    iput-object p0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->label:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->isAuthenticationRequired(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;->deviceEntryInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

    iput-object p2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->repository:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepository;

    check-cast p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;->isLockscreenEnabled(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    move-object v7, p2

    move-object p2, p0

    move-object p0, v7

    :goto_3
    move-object v7, p2

    move-object p2, p0

    move-object p0, v7

    :goto_4
    iput-object v6, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1$2$1;->label:I

    invoke-interface {p2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    :cond_9
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
